package com.entilitystudio.android_background_clipboard

import android.content.Context
import android.content.SharedPreferences
import android.util.Log
import io.flutter.BuildConfig
import okhttp3.MediaType.Companion.toMediaTypeOrNull
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import okhttp3.logging.HttpLoggingInterceptor
import org.json.JSONObject
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale
import java.util.TimeZone


class CopyCatSyncManager(applicationContext: Context) {
    private val logTag = "CopyCatSyncManager"
    private var listening = false
    private val regex = "\\d+".toRegex()
    private val contentType = "application/json"
    private val loggingInterceptor = HttpLoggingInterceptor()

    private val client = OkHttpClient.Builder().addInterceptor(loggingInterceptor).build()
    private val sp = applicationContext.getSharedPreferences(
        "FlutterSharedPreferences",
        Context.MODE_PRIVATE
    )

    var projectKey: String = ""
    var projectApiKey: String = ""
    var deviceId: String = ""

    private var token = "{}"
    private var accessToken: String? = null
    private var refreshToken: String? = null
    private var expireAt: Long? = null
    private var userId: String? = null
    var isStopped = false



    private val listener =
        SharedPreferences.OnSharedPreferenceChangeListener { sharedPreferences, key ->
            if (key == tokenKey) {
                token = sharedPreferences.getString(key, "{}")!!
                load()
            }
        }

    private val isExpired: Boolean
        get() {
            if (expireAt == null) return true
            val currentTime = (System.currentTimeMillis() / 1000) - 300
            return currentTime > expireAt!!
        }

    val currentUserId: String?
        get() = userId

    private val isReady: Boolean
        get() = projectKey.isNotBlank() && projectApiKey.isNotBlank() && deviceId.isNotBlank()

    private val url
        get() = "https://$projectKey.supabase.co"

    private val tokenKey
        get() = "flutter.sb-$projectKey-auth-token"



    fun start() {
        if (listening) return
        sp.registerOnSharedPreferenceChangeListener(listener)
        listening = true
        Log.d(logTag, "Started")
        Log.d(logTag, "tokenKey = $tokenKey")
        token = sp.getString(tokenKey, "{}")!!
        load()
        if (!BuildConfig.RELEASE) {
            loggingInterceptor.level = HttpLoggingInterceptor.Level.BODY
        } else {
            loggingInterceptor.level = HttpLoggingInterceptor.Level.NONE
        }
    }

    fun stop() {
        if (!listening) return
        sp.unregisterOnSharedPreferenceChangeListener(listener)
        listening = false
        Log.d(logTag, "Stopped")
    }

    private fun load() {
        if (token == "{}") {
            Log.d(logTag, "Load failed, token = {}")
            isStopped = true
            return
        }
        val parsed = JSONObject(token)
        accessToken = parsed.getString("access_token")
        refreshToken = parsed.getString("refresh_token")
        expireAt = parsed.getLong("expires_at")
        userId = parsed.getJSONObject("user").getString("id")
    }

    private fun writeToSp(key: String, value: String) {
        sp.edit().putString(key, value).apply()
    }

    private fun doRefreshToken(): Boolean {
        if (refreshToken == null || !isReady) return false
        val url = "$url/auth/v1/token?grant_type=refresh_token"
        val refreshTokenBody = """{"refresh_token": "$refreshToken"}"""

        val requestBody = refreshTokenBody.toRequestBody(contentType.toMediaTypeOrNull())

        val request = Request.Builder()
            .url(url)
            .addHeader("apikey", projectApiKey)
            .addHeader("Content-type", contentType)
            .post(requestBody)
            .build()

        client.newCall(request).execute().use { response ->
            if (response.code == 200 && response.body != null) {
                val token = response.body?.string() ?: return false
                writeToSp(tokenKey, token)
                load()
            }
        }
        return true
    }

    private fun currentTime(): String {
        val dateFormat = SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.getDefault())
        dateFormat.timeZone = TimeZone.getTimeZone("UTC")
        return dateFormat.format(Date())
    }

    fun writeClipboardItem(clip: String, type: ClipType, encrypted: Boolean): Long {
        Log.i(logTag, "Writing to remote clipboard")
        if (userId == null || !isReady) {
            Log.w(logTag, "Failed to write to remote clipboard, service not ready or user not found.")
            return -1
        }
        if (isExpired) {
            Log.w(logTag, "Token expired, trying to refresh the token.")
            val refreshed = doRefreshToken()
            if (!refreshed) {
                Log.w(logTag, "Couldn't refresh token.")
                return -1
            }
            Log.i(logTag, "Successfully refreshed the token")
        }
        val url = "$url/rest/v1/clipboard_items"
        val payload = mutableMapOf(
            "userId" to userId!!,
            "modified" to currentTime(),
            "os" to "android",
            "deviceId" to deviceId,
            "encrypted" to encrypted,
        )

        when (type) {
            ClipType.Text -> {
                payload["text"] = clip
                payload["type"] = "text"
            }
            ClipType.Email -> {
                payload["text"] = clip
                payload["type"] = "text"
                payload["textCategory"] = "email"
            }
            ClipType.Phone -> {
                payload["text"] = clip
                payload["type"] = "text"
                payload["textCategory"] = "phone"
            }
            ClipType.Url -> {
                payload["url"] = clip
                payload["type"] = "url"
            }
            else -> {
                payload["text"] = clip
                payload["type"] = "text"
            }
        }

        val jsonPayload = JSONObject(payload as Map<String, String?>).toString()
        val requestBody = jsonPayload.toRequestBody(contentType.toMediaTypeOrNull())

        val request = Request.Builder()
            .url(url)
            .addHeader("apikey", projectApiKey)
            .addHeader("Content-type", contentType)
            .addHeader("Authorization", "Bearer $accessToken")
            .addHeader("Prefer", "return=headers-only")
            .post(requestBody)
            .build()

        // Use the 'use' block to automatically close the response after usage
        client.newCall(request).execute().use { response ->
            if (response.code == 201) {
                val location = response.header("location") ?: return -1
                val match = regex.find(location) ?: return -1
                return match.value.toLong()
            }
        }
        return -1
    }

}
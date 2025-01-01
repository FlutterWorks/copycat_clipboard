package com.entilitystudio.android_background_clipboard

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.app.Service
import android.content.ClipData
import android.content.ClipboardManager
import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Binder
import android.os.Build
import android.os.IBinder
import android.util.Log
import android.view.WindowManager
import android.view.textclassifier.TextClassifier
import android.view.textclassifier.TextLinks
import android.widget.LinearLayout
import android.widget.Toast
import androidx.annotation.RequiresApi
import androidx.core.app.NotificationCompat
import androidx.core.content.ContextCompat
import kotlinx.coroutines.DelicateCoroutinesApi
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.GlobalScope
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.io.InputStream

enum class ClipAction {
    Pending,
    PartialSuccess,
    Excluded,
    Success,
    Duplicate,
    Failed,
}

class CopyCatClipboardService : Service() {
    private lateinit var clipboardManager: ClipboardManager
    private lateinit var notificationManager: NotificationManager
    private lateinit var windowManager: WindowManager
    lateinit var copycatStorage: CopyCatSharedStorage
    private val notificationId: Int = 1
    private lateinit var notificationBuilder: NotificationCompat.Builder
    private var lastCopiedText: String? = null

    private var overlayLayout: LinearLayout? = null

    private val nChannelId = "copycat-notification-channel"
    private val logTag = "CopyCatClipboardService"
    private val binder = LocalBinder()

    private val ackToastEnable: Boolean
        get() = copycatStorage.showAckToast

    inner class LocalBinder : Binder() {
        fun getService(): CopyCatClipboardService = this@CopyCatClipboardService
    }

    fun performClipboardRead(appPackageName: String) {
        Log.d(logTag, "Current Package: $appPackageName")
        Log.d(logTag, "Current Exclusions: ${copycatStorage.excludedPackages}")
        if (!copycatStorage.serviceEnabled) {
            Log.w(logTag, "Service not configured")
            return
        }
        // Checking package exclusion
        val excluded =
            (copycatStorage.excludePasswordManagers && copycatStorage.passwordManagers.contains(
                appPackageName
            )) || copycatStorage.excludedPackages.contains(appPackageName)
        if (excluded) {
            Log.i(logTag, "$appPackageName is excluded by exclusion rules.")
            showAck("Clip Excluded!")
            return
        }

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            getFocusOnOverlay()
            readClipboard()
            removeFocusOnOverlay()
        }
    }

    fun writeToClipboard(data: String) {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            getFocusOnOverlay()
            val clip = ClipData.newPlainText("CopyCat", data)
            clipboardManager.setPrimaryClip(clip)
            removeFocusOnOverlay()
        }
    }

    private fun readUriClip(uri: Uri, label: String? = null): ClipAction {
        return when (uri.scheme) {
            "content" -> {
                // Media or File!
                var inputStream: InputStream? = null
                try {
                    inputStream = contentResolver.openInputStream(uri)
                    ClipAction.Success
                } finally {
                    inputStream?.close()
                }
            }

            else -> {
                writeTextToCopyCatClipboard(uri.toString(), ClipType.Url, label)
            }
        }
    }

    @RequiresApi(Build.VERSION_CODES.R)
    private fun readTextLinks(tls: TextLinks, label: String? = null): ClipAction {

        val text = tls.text
        for (link in tls.links) {
            if (link.getConfidenceScore(TextClassifier.TYPE_URL) == 1.0f) {
                val url = text.substring(link.start, link.end)
                if (url.startsWith("http://") || url.startsWith("https://")) {
                    Log.d(logTag, "Clipboard Link: $url")
                    return writeTextToCopyCatClipboard(url, ClipType.Url, label)
                }
            }
            if (link.getConfidenceScore(TextClassifier.TYPE_EMAIL) == 1.0f) {
                if (copycatStorage.excludeEmail) return ClipAction.Excluded

                val email = text.substring(link.start, link.end)
                Log.d(logTag, "Clipboard Email: $email")
                return writeTextToCopyCatClipboard(email, ClipType.Email, label)
            }
            if (link.getConfidenceScore(TextClassifier.TYPE_PHONE) == 1.0f) {
                if (copycatStorage.excludePhone) return ClipAction.Excluded

                val phone = text.substring(link.start, link.end)
                Log.d(logTag, "Clipboard Phone: $phone")
                return writeTextToCopyCatClipboard(phone, ClipType.Phone, label)
            }
        }
        return ClipAction.Pending
    }


    private fun writeTextToCopyCatClipboard(
        text: String,
        type: ClipType,
        label: String? = null
    ): ClipAction {
        if (lastCopiedText == text) {
            Log.d(logTag, "Detected duplicate item")
            return ClipAction.Duplicate
        }
        lastCopiedText = text
        copycatStorage.writeTextClip(text, type, label ?: "")
        return ClipAction.Success
    }

    @OptIn(DelicateCoroutinesApi::class)
    private fun readClipboard() {
        val clipData = clipboardManager.primaryClip

        GlobalScope.launch(Dispatchers.IO) {
            var actionStatus: ClipAction = ClipAction.Pending

            if (clipData != null && clipData.itemCount > 0) {
                val clipLabel = clipData.description?.label?.toString()
                Log.d(logTag, "Description Label: $clipLabel")
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
                    Log.d(logTag, "Description Extras: ${clipData.description?.extras}")
                }
                val item = clipData.getItemAt(0)

                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
                    item.textLinks?.let {
                        val result = readTextLinks(it, clipLabel)
                        actionStatus =
                            if (result == ClipAction.Success && it.text.length == lastCopiedText?.length) {
                                result
                            } else if (result == ClipAction.Excluded) {
                                ClipAction.Excluded
                            } else {
                                ClipAction.PartialSuccess
                            }

                    }
                }

                if (actionStatus != ClipAction.Excluded) {
                    if (actionStatus != ClipAction.Success)
                        item.text?.let {
                            Log.d(logTag, "Clipboard Text: $it")
                            actionStatus =
                                writeTextToCopyCatClipboard(it.toString(), ClipType.Text, clipLabel)
                        }

                    if (actionStatus != ClipAction.Success)
                        item.uri?.let {
                            Log.d(logTag, "Clipboard URI: $it")
                            actionStatus = readUriClip(it, clipLabel)
                        }
                }
            }

            withContext(Dispatchers.Main) {
                Log.d(logTag, "Clip Action: $actionStatus")
                when (actionStatus) {
                    ClipAction.Duplicate -> showAck("Detected duplicate item")
                    ClipAction.Failed -> showAck("CopyCat failed to capture clipboard")
                    ClipAction.Excluded -> showAck("Clip Excluded!")
                    else -> {}
                }
            }
        }

    }

    private fun showAck(text: String) {
        if (!ackToastEnable) return
        Toast.makeText(this, text, Toast.LENGTH_SHORT).show()
    }

    private fun removeFocusOnOverlay() {
        windowManager.removeView(overlayLayout)
    }

    @RequiresApi(Build.VERSION_CODES.O)
    private fun getFocusOnOverlay() {
        // Initialize the WindowManager to add the overlay
        windowManager = getSystemService(Context.WINDOW_SERVICE) as WindowManager

        // Create the overlay layout
        overlayLayout = LinearLayout(this)
        overlayLayout?.alpha = 0.8f
        val color = ContextCompat.getColor(this, android.R.color.transparent)
        overlayLayout?.setBackgroundColor(color)
        overlayLayout?.orientation = LinearLayout.VERTICAL
        overlayLayout?.layoutParams = WindowManager.LayoutParams(
            WindowManager.LayoutParams.WRAP_CONTENT,
            WindowManager.LayoutParams.WRAP_CONTENT,
            WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY,  // For Android O and above
            WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE or
                    WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL,
            android.graphics.PixelFormat.TRANSPARENT
        )

        // Add overlay to the window
        windowManager.addView(overlayLayout, overlayLayout?.layoutParams)
    }

    companion object {
        var isRunning: Boolean = false
    }

    private fun createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val channel = NotificationChannel(
                nChannelId,
                "CopyCat Notification Channel",
                NotificationManager.IMPORTANCE_HIGH
            )
            notificationManager.createNotificationChannel(channel)
        }
    }

    private fun prepareNotification() {
        notificationBuilder = NotificationCompat.Builder(this, nChannelId)
            .setSmallIcon(R.drawable.tray_icon)
            .setOngoing(true) // Makes the notification non-dismissible
    }

    private fun showNotification(): Notification {
        val deleteIntent = Intent(this, NotificationDeleteReceiver::class.java)
        val pendingDeleteIntent = PendingIntent.getBroadcast(
            this,
            788,
            deleteIntent,
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
        )
        return notificationBuilder
            .setDeleteIntent(pendingDeleteIntent)
            .setContentTitle("CopyCat Clipboard")
            .setContentText("Monitoring clipboard activity")
            .build()
    }

    private val onClipChangeListener = ClipboardManager.OnPrimaryClipChangedListener {
        if (Utils.isActivityOnTop) {
            Log.d(logTag, "Primary Clipboard disabled! Because top activity is CopyCat itself.")
            return@OnPrimaryClipChangedListener
        }
        Log.d(logTag, "Reading Primary Clipboard")
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            getFocusOnOverlay()
            readClipboard()
            removeFocusOnOverlay()
        }
    }

    @RequiresApi(Build.VERSION_CODES.M)
    private fun setupClipboardManager() {
        clipboardManager.addPrimaryClipChangedListener(onClipChangeListener)
    }

    private fun prepareAndShowNotification() {
        createNotificationChannel()
        prepareNotification()
        startForeground(notificationId, showNotification())
    }

    override fun onCreate() {
        super.onCreate()
        notificationManager = getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        clipboardManager = getSystemService(Context.CLIPBOARD_SERVICE) as ClipboardManager
        copycatStorage = CopyCatSharedStorage.getInstance(this)
        copycatStorage.start()
        prepareAndShowNotification()
        isRunning = true
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            setupClipboardManager()
        }
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        if (intent?.action == "RESTART_NOTIFICATION") {
            prepareAndShowNotification()
        }
        return START_STICKY
    }

    override fun onBind(p0: Intent?): IBinder = binder

    override fun onDestroy() {
        clipboardManager.removePrimaryClipChangedListener(onClipChangeListener)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            stopForeground(STOP_FOREGROUND_REMOVE)
        } else {
            @Suppress("DEPRECATION")
            stopForeground(true)
        }
        Log.d(logTag, "CopyCatClipboardService Destroyed")
        showAck("CopyCat Clipboard Stopped")
        isRunning = false
        copycatStorage.clean()
        super.onDestroy()
    }

}
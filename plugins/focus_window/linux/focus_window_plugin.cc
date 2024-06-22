#include "include/focus_window/focus_window_plugin.h"

#include <flutter_linux/flutter_linux.h>
#include <gtk/gtk.h>
#include <sys/utsname.h>
#include <X11/Xlib.h>
#include <X11/extensions/XTest.h>
#include <cstring>
#include <unistd.h>

#include "focus_window_plugin_private.h"

#define FOCUS_WINDOW_PLUGIN(obj)                                     \
  (G_TYPE_CHECK_INSTANCE_CAST((obj), focus_window_plugin_get_type(), \
                              FocusWindowPlugin))

struct _FocusWindowPlugin
{
  GObject parent_instance;
};

G_DEFINE_TYPE(FocusWindowPlugin, focus_window_plugin, g_object_get_type())

// Function to simulate key press using X11
static void simulate_key_press(Display *display, KeySym keysym)
{
  KeyCode keycode = XKeysymToKeycode(display, keysym);
  XTestFakeKeyEvent(display, keycode, True, 0);
  XTestFakeKeyEvent(display, keycode, False, 0);
  XFlush(display);
}

// Function to paste content using X11
static FlMethodResponse *paste_content()
{
  Display *display = XOpenDisplay(nullptr);
  if (display == nullptr)
  {
    g_autoptr(FlValue) result = fl_value_new_string("Failed to open X display");
    return FL_METHOD_RESPONSE(fl_method_error_response_new("XOpenDisplayError", "Failed to open X display", result));
  }

  // Simulate pressing Ctrl+V
  simulate_key_press(display, XStringToKeysym("Control_L"));
  simulate_key_press(display, XStringToKeysym("V"));
  XTestFakeKeyEvent(display, XKeysymToKeycode(display, XStringToKeysym("Control_L")), False, 0);

  XCloseDisplay(display);

  g_autoptr(FlValue) result = fl_value_new_string("Pasted content successfully");
  return FL_METHOD_RESPONSE(fl_method_success_response_new(result));
}

// Called when a method call is received from Flutter.
static void focus_window_plugin_handle_method_call(
    FocusWindowPlugin *self,
    FlMethodCall *method_call)
{
  g_autoptr(FlMethodResponse) response = nullptr;

  const gchar *method = fl_method_call_get_name(method_call);

  if (strcmp(method, "getPlatformVersion") == 0)
  {
    response = get_platform_version();
  }
  else if (strcmp(method, "pasteContent") == 0)
  {
    response = paste_content();
  }
  else
  {
    response = FL_METHOD_RESPONSE(fl_method_not_implemented_response_new());
  }

  fl_method_call_respond(method_call, response, nullptr);
}

FlMethodResponse *get_platform_version()
{
  struct utsname uname_data = {};
  uname(&uname_data);
  g_autofree gchar *version = g_strdup_printf("Linux %s", uname_data.version);
  g_autoptr(FlValue) result = fl_value_new_string(version);
  return FL_METHOD_RESPONSE(fl_method_success_response_new(result));
}

static void focus_window_plugin_dispose(GObject *object)
{
  G_OBJECT_CLASS(focus_window_plugin_parent_class)->dispose(object);
}

static void focus_window_plugin_class_init(FocusWindowPluginClass *klass)
{
  G_OBJECT_CLASS(klass)->dispose = focus_window_plugin_dispose;
}

static void focus_window_plugin_init(FocusWindowPlugin *self) {}

static void method_call_cb(FlMethodChannel *channel, FlMethodCall *method_call,
                           gpointer user_data)
{
  FocusWindowPlugin *plugin = FOCUS_WINDOW_PLUGIN(user_data);
  focus_window_plugin_handle_method_call(plugin, method_call);
}

void focus_window_plugin_register_with_registrar(FlPluginRegistrar *registrar)
{
  FocusWindowPlugin *plugin = FOCUS_WINDOW_PLUGIN(
      g_object_new(focus_window_plugin_get_type(), nullptr));

  g_autoptr(FlStandardMethodCodec) codec = fl_standard_method_codec_new();
  g_autoptr(FlMethodChannel) channel =
      fl_method_channel_new(fl_plugin_registrar_get_messenger(registrar),
                            "focus_window",
                            FL_METHOD_CODEC(codec));
  fl_method_channel_set_method_call_handler(channel, method_call_cb,
                                            g_object_ref(plugin),
                                            g_object_unref);

  g_object_unref(plugin);
}

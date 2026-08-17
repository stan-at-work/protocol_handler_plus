#ifndef FLUTTER_PLUGIN_PROTOCOL_HANDLER_PLUS_WINDOWS_PLUGIN_H_
#define FLUTTER_PLUGIN_PROTOCOL_HANDLER_PLUS_WINDOWS_PLUGIN_H_

#include <flutter/event_channel.h>
#include <flutter/event_stream_handler_functions.h>
#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace protocol_handler_plus_windows {

class ProtocolHandlerPlusWindowsPlugin
    : public flutter::Plugin,
      flutter::StreamHandler<flutter::EncodableValue> {
 private:
  std::unique_ptr<flutter::EventSink<flutter::EncodableValue>> event_sink_;

  int32_t window_proc_id_ = -1;

  std::optional<LRESULT> HandleWindowProc(HWND hwnd,
                                          UINT message,
                                          WPARAM wparam,
                                          LPARAM lparam);

 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows* registrar);

  ProtocolHandlerPlusWindowsPlugin(flutter::PluginRegistrarWindows* registrar);

  virtual ~ProtocolHandlerPlusWindowsPlugin();

  // Disallow copy and assign.
  ProtocolHandlerPlusWindowsPlugin(const ProtocolHandlerPlusWindowsPlugin&) = delete;
  ProtocolHandlerPlusWindowsPlugin& operator=(const ProtocolHandlerPlusWindowsPlugin&) =
      delete;

  std::string ProtocolHandlerPlusWindowsPlugin::GetInitialUrl();

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue>& method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);

  std::unique_ptr<flutter::StreamHandlerError<>> OnListenInternal(
      const flutter::EncodableValue* arguments,
      std::unique_ptr<flutter::EventSink<>>&& events) override;

  std::unique_ptr<flutter::StreamHandlerError<>> OnCancelInternal(
      const flutter::EncodableValue* arguments) override;
};

}  // namespace protocol_handler_plus_windows

#endif  // FLUTTER_PLUGIN_PROTOCOL_HANDLER_PLUS_WINDOWS_PLUGIN_H_

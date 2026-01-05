import 'package:protocol_handler_windows/src/protocol_handler_windows_base.dart';

class ProtocolHandlerWindows extends ProtocolHandlerWindowsBase {
  ProtocolHandlerWindows() : super();

  static void registerWith() {
    // Web implementation does nothing.
  }

  Future<void> register(String scheme, {String? friendlyAppName}) async {
    // Web implementation does nothing.
  }
}

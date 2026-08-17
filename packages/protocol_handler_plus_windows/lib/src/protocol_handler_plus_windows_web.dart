import 'package:protocol_handler_plus_windows/src/protocol_handler_plus_windows_base.dart';

class ProtocolHandlerPlusWindowsImpl extends ProtocolHandlerPlusWindowsBase {
  ProtocolHandlerPlusWindowsImpl() : super();

  static void registerWith() {
    // Web implementation does nothing.
  }

  Future<void> register(String scheme, {String? friendlyAppName}) async {
    // Web implementation does nothing.
  }
}

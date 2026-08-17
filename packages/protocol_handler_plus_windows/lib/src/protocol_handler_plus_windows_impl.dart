import 'package:protocol_handler_plus_platform_interface/protocol_handler_plus_platform_interface.dart';

import 'protocol_handler_plus_windows_stub.dart'
    if (dart.library.io) 'protocol_handler_plus_windows_io.dart'
    if (dart.library.html) 'protocol_handler_plus_windows_web.dart';

class ProtocolHandlerPlusWindows extends MethodChannelProtocolHandlerPlus {
  final ProtocolHandlerPlusWindowsImpl _impl;

  ProtocolHandlerPlusWindows() : _impl = ProtocolHandlerPlusWindowsImpl();

  static void registerWith() {
    ProtocolHandlerPlusPlatform.instance = ProtocolHandlerPlusWindowsImpl();
  }

  Future<void> register(String scheme, {String? friendlyAppName}) async {
    return await _impl.register(scheme, friendlyAppName: friendlyAppName);
  }
}

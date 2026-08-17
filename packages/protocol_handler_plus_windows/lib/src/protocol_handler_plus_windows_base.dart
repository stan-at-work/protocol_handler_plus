import 'package:protocol_handler_plus_platform_interface/protocol_handler_plus_platform_interface.dart';

abstract class ProtocolHandlerPlusWindowsBase extends MethodChannelProtocolHandlerPlus {
  Future<void> register(String scheme, {String? friendlyAppName});
}

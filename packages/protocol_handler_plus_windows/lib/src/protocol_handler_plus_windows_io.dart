import 'dart:io';

import 'package:protocol_handler_plus_platform_interface/protocol_handler_plus_platform_interface.dart';
import 'package:protocol_handler_plus_windows/src/protocol_handler_plus_windows_base.dart';
import 'package:win32_registry/win32_registry.dart';

class ProtocolHandlerPlusWindowsImpl extends ProtocolHandlerPlusWindowsBase {
  /// The [ProtocolHandlerPlusWindows] constructor.
  ProtocolHandlerPlusWindowsImpl() : super();

  /// Registers this class as the default instance of [ProtocolHandlerPlusWindowsImpl].
  static void registerWith() {
    ProtocolHandlerPlusPlatform.instance = ProtocolHandlerPlusWindowsImpl();
  }

  @override
  Future<void> register(String scheme, {String? friendlyAppName}) async {
    final appPath = Platform.resolvedExecutable;

    final protocolRegKey = 'Software\\Classes\\$scheme';
    const protocolCmdRegKey = 'shell\\open\\command';

    final regKey = CURRENT_USER.create(protocolRegKey);

    final protocolRegValue = const RegistryValue.string('');
    regKey.setValue('URL Protocol', protocolRegValue);

    final protocolCmdRegValue = RegistryValue.string('$appPath "%1"');
    regKey.create(protocolCmdRegKey).setValue('', protocolCmdRegValue);

    if (friendlyAppName != null) {
      const applicationRegKey = 'Application';
      final friendlyAppNameRegValue = RegistryValue.string(friendlyAppName);

      regKey
          .create(applicationRegKey)
          .setValue('ApplicationName', friendlyAppNameRegValue);
    }
  }
}

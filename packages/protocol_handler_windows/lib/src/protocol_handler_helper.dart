export 'protocol_handler_helper.dart'
    if (dart.library.ffi) 'protocol_handler_helper_ffi.dart'
    if (dart.library.html) 'protocol_handler_helper_web.dart';

# protocol_handler_plus_platform_interface

[![pub version][pub-image]][pub-url]

[pub-image]: https://img.shields.io/pub/v/protocol_handler_plus_platform_interface.svg
[pub-url]: https://pub.dev/packages/protocol_handler_plus_platform_interface

A common platform interface for the [protocol_handler_plus](https://pub.dev/packages/protocol_handler_plus) plugin.

## Usage

To implement a new platform-specific implementation of protocol_handler_plus, extend `ProtocolHandlerPlusPlatform` with an implementation that performs the platform-specific behavior, and when you register your plugin, set the default `ProtocolHandlerPlusPlatform` by calling `ProtocolHandlerPlusPlatform.instance = MyPlatformProtocolHandlerPlus()`.

## License

[MIT](./LICENSE)

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'pos_printer_manager_method_channel.dart';

abstract class PosPrinterManagerPlatform extends PlatformInterface {
  /// Constructs a PosPrinterManagerPlatform.
  PosPrinterManagerPlatform() : super(token: _token);

  static final Object _token = Object();

  static PosPrinterManagerPlatform _instance = MethodChannelPosPrinterManager();

  /// The default instance of [PosPrinterManagerPlatform] to use.
  ///
  /// Defaults to [MethodChannelPosPrinterManager].
  static PosPrinterManagerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PosPrinterManagerPlatform] when
  /// they register themselves.
  static set instance(PosPrinterManagerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'pos_printer_manager_platform_interface.dart';

/// An implementation of [PosPrinterManagerPlatform] that uses method channels.
class MethodChannelPosPrinterManager extends PosPrinterManagerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('pos_printer_manager');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

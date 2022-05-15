import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'plugins_platform_interface.dart';

/// An implementation of [PluginsPlatform] that uses method channels.
class MethodChannelPlugins extends PluginsPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('plugins');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

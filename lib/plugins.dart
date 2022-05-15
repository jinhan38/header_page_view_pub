
import 'plugins_platform_interface.dart';

class Plugins {
  Future<String?> getPlatformVersion() {
    return PluginsPlatform.instance.getPlatformVersion();
  }
}

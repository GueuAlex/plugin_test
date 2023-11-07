
import 'famoco_plugin_platform_interface.dart';

class FamocoPlugin {
  Future<String?> getPlatformVersion() {
    return FamocoPluginPlatform.instance.getPlatformVersion();
  }
}

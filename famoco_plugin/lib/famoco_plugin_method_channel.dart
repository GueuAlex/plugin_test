import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'famoco_plugin_platform_interface.dart';

/// An implementation of [FamocoPluginPlatform] that uses method channels.
class MethodChannelFamocoPlugin extends FamocoPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('famoco_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'famoco_plugin_method_channel.dart';

abstract class FamocoPluginPlatform extends PlatformInterface {
  /// Constructs a FamocoPluginPlatform.
  FamocoPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static FamocoPluginPlatform _instance = MethodChannelFamocoPlugin();

  /// The default instance of [FamocoPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelFamocoPlugin].
  static FamocoPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FamocoPluginPlatform] when
  /// they register themselves.
  static set instance(FamocoPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

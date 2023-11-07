import 'package:flutter/services.dart';

class FamocoFingerprint {
  static const MethodChannel _channel = MethodChannel('famoco_fingerprint');

  static Future<String> captureFingerprint() async {
    return await _channel.invokeMethod('captureFingerprint');
  }
}

import 'package:flutter/services.dart';
import 'package:varosha_app/features/device_info/data/model/device_info_model.dart';

class DeviceInfoPlatformHandler {
  static const MethodChannel _channel = MethodChannel('device_info_channel');

  static Future<DeviceInfoModel> getDeviceInfo() async {
    try {
      final Map<dynamic, dynamic> result =
          await _channel.invokeMethod('getDeviceInfo');
      return DeviceInfoModel.fromJson(Map<String, dynamic>.from(result));
    } on PlatformException catch (e) {
      throw Exception('Failed to get device info: ${e.message}');
    }
  }
}

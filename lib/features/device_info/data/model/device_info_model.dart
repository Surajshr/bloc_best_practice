import 'package:varosha_app/features/device_info/domain/entities/device_info_entity.dart';

class DeviceInfoModel extends DeviceInfoEntity {
  const DeviceInfoModel({
    required super.batteryLevel,
    required super.deviceModel,
    required super.isCharging,
    required super.systemTime,
  });

  factory DeviceInfoModel.fromJson(Map<String, dynamic> json) {
    return DeviceInfoModel(
      batteryLevel: json['batteryLevel'] as int,
      deviceModel: json['deviceModel'] as String,
      isCharging: json['isCharging'] as bool,
      systemTime: DateTime.parse(json['systemTime'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'batteryLevel': batteryLevel,
      'deviceModel': deviceModel,
      'isCharging': isCharging,
      'systemTime': systemTime.toIso8601String(),
    };
  }
}

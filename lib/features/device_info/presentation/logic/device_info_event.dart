part of 'device_info_bloc.dart';

@freezed
class DeviceInfoEvent with _$DeviceInfoEvent {
  const factory DeviceInfoEvent.fetchDeviceInfo() = _FetchDeviceInfo;
  const factory DeviceInfoEvent.refreshDeviceInfo() = _RefreshDeviceInfo;
}

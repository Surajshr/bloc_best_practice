part of 'device_info_bloc.dart';

@freezed
class DeviceInfoState with _$DeviceInfoState {
  const factory DeviceInfoState({
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
    String? errorMessage,
    DeviceInfoModel? deviceInfo,
  }) = _DeviceInfoState;
}

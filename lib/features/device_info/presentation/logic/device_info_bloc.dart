import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:varosha_app/features/device_info/data/model/device_info_model.dart';
import 'package:varosha_app/features/device_info/presentation/platform/device_info_platform_handler.dart';

part 'device_info_event.dart';
part 'device_info_state.dart';
part 'device_info_bloc.freezed.dart';

class DeviceInfoBloc extends Bloc<DeviceInfoEvent, DeviceInfoState> {
  DeviceInfoBloc() : super(const DeviceInfoState()) {
    on<_FetchDeviceInfo>(_onFetchDeviceInfo);
    on<_RefreshDeviceInfo>(_onRefreshDeviceInfo);
  }

  Future<void> _onFetchDeviceInfo(
    _FetchDeviceInfo event,
    Emitter<DeviceInfoState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, hasError: false));

    try {
      final deviceInfo = await DeviceInfoPlatformHandler.getDeviceInfo();
      emit(state.copyWith(
        deviceInfo: deviceInfo,
        isLoading: false,
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        hasError: true,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> _onRefreshDeviceInfo(
    _RefreshDeviceInfo event,
    Emitter<DeviceInfoState> emit,
  ) async {
    add(const DeviceInfoEvent.fetchDeviceInfo());
  }
}

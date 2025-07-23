// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeviceInfoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDeviceInfo,
    required TResult Function() refreshDeviceInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDeviceInfo,
    TResult? Function()? refreshDeviceInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDeviceInfo,
    TResult Function()? refreshDeviceInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDeviceInfo value) fetchDeviceInfo,
    required TResult Function(_RefreshDeviceInfo value) refreshDeviceInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDeviceInfo value)? fetchDeviceInfo,
    TResult? Function(_RefreshDeviceInfo value)? refreshDeviceInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDeviceInfo value)? fetchDeviceInfo,
    TResult Function(_RefreshDeviceInfo value)? refreshDeviceInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceInfoEventCopyWith<$Res> {
  factory $DeviceInfoEventCopyWith(
          DeviceInfoEvent value, $Res Function(DeviceInfoEvent) then) =
      _$DeviceInfoEventCopyWithImpl<$Res, DeviceInfoEvent>;
}

/// @nodoc
class _$DeviceInfoEventCopyWithImpl<$Res, $Val extends DeviceInfoEvent>
    implements $DeviceInfoEventCopyWith<$Res> {
  _$DeviceInfoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeviceInfoEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchDeviceInfoImplCopyWith<$Res> {
  factory _$$FetchDeviceInfoImplCopyWith(_$FetchDeviceInfoImpl value,
          $Res Function(_$FetchDeviceInfoImpl) then) =
      __$$FetchDeviceInfoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchDeviceInfoImplCopyWithImpl<$Res>
    extends _$DeviceInfoEventCopyWithImpl<$Res, _$FetchDeviceInfoImpl>
    implements _$$FetchDeviceInfoImplCopyWith<$Res> {
  __$$FetchDeviceInfoImplCopyWithImpl(
      _$FetchDeviceInfoImpl _value, $Res Function(_$FetchDeviceInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceInfoEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchDeviceInfoImpl implements _FetchDeviceInfo {
  const _$FetchDeviceInfoImpl();

  @override
  String toString() {
    return 'DeviceInfoEvent.fetchDeviceInfo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchDeviceInfoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDeviceInfo,
    required TResult Function() refreshDeviceInfo,
  }) {
    return fetchDeviceInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDeviceInfo,
    TResult? Function()? refreshDeviceInfo,
  }) {
    return fetchDeviceInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDeviceInfo,
    TResult Function()? refreshDeviceInfo,
    required TResult orElse(),
  }) {
    if (fetchDeviceInfo != null) {
      return fetchDeviceInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDeviceInfo value) fetchDeviceInfo,
    required TResult Function(_RefreshDeviceInfo value) refreshDeviceInfo,
  }) {
    return fetchDeviceInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDeviceInfo value)? fetchDeviceInfo,
    TResult? Function(_RefreshDeviceInfo value)? refreshDeviceInfo,
  }) {
    return fetchDeviceInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDeviceInfo value)? fetchDeviceInfo,
    TResult Function(_RefreshDeviceInfo value)? refreshDeviceInfo,
    required TResult orElse(),
  }) {
    if (fetchDeviceInfo != null) {
      return fetchDeviceInfo(this);
    }
    return orElse();
  }
}

abstract class _FetchDeviceInfo implements DeviceInfoEvent {
  const factory _FetchDeviceInfo() = _$FetchDeviceInfoImpl;
}

/// @nodoc
abstract class _$$RefreshDeviceInfoImplCopyWith<$Res> {
  factory _$$RefreshDeviceInfoImplCopyWith(_$RefreshDeviceInfoImpl value,
          $Res Function(_$RefreshDeviceInfoImpl) then) =
      __$$RefreshDeviceInfoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshDeviceInfoImplCopyWithImpl<$Res>
    extends _$DeviceInfoEventCopyWithImpl<$Res, _$RefreshDeviceInfoImpl>
    implements _$$RefreshDeviceInfoImplCopyWith<$Res> {
  __$$RefreshDeviceInfoImplCopyWithImpl(_$RefreshDeviceInfoImpl _value,
      $Res Function(_$RefreshDeviceInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceInfoEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshDeviceInfoImpl implements _RefreshDeviceInfo {
  const _$RefreshDeviceInfoImpl();

  @override
  String toString() {
    return 'DeviceInfoEvent.refreshDeviceInfo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshDeviceInfoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDeviceInfo,
    required TResult Function() refreshDeviceInfo,
  }) {
    return refreshDeviceInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDeviceInfo,
    TResult? Function()? refreshDeviceInfo,
  }) {
    return refreshDeviceInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDeviceInfo,
    TResult Function()? refreshDeviceInfo,
    required TResult orElse(),
  }) {
    if (refreshDeviceInfo != null) {
      return refreshDeviceInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDeviceInfo value) fetchDeviceInfo,
    required TResult Function(_RefreshDeviceInfo value) refreshDeviceInfo,
  }) {
    return refreshDeviceInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDeviceInfo value)? fetchDeviceInfo,
    TResult? Function(_RefreshDeviceInfo value)? refreshDeviceInfo,
  }) {
    return refreshDeviceInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDeviceInfo value)? fetchDeviceInfo,
    TResult Function(_RefreshDeviceInfo value)? refreshDeviceInfo,
    required TResult orElse(),
  }) {
    if (refreshDeviceInfo != null) {
      return refreshDeviceInfo(this);
    }
    return orElse();
  }
}

abstract class _RefreshDeviceInfo implements DeviceInfoEvent {
  const factory _RefreshDeviceInfo() = _$RefreshDeviceInfoImpl;
}

/// @nodoc
mixin _$DeviceInfoState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  DeviceInfoModel? get deviceInfo => throw _privateConstructorUsedError;

  /// Create a copy of DeviceInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeviceInfoStateCopyWith<DeviceInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceInfoStateCopyWith<$Res> {
  factory $DeviceInfoStateCopyWith(
          DeviceInfoState value, $Res Function(DeviceInfoState) then) =
      _$DeviceInfoStateCopyWithImpl<$Res, DeviceInfoState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? errorMessage,
      DeviceInfoModel? deviceInfo});
}

/// @nodoc
class _$DeviceInfoStateCopyWithImpl<$Res, $Val extends DeviceInfoState>
    implements $DeviceInfoStateCopyWith<$Res> {
  _$DeviceInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeviceInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? errorMessage = freezed,
    Object? deviceInfo = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceInfo: freezed == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as DeviceInfoModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceInfoStateImplCopyWith<$Res>
    implements $DeviceInfoStateCopyWith<$Res> {
  factory _$$DeviceInfoStateImplCopyWith(_$DeviceInfoStateImpl value,
          $Res Function(_$DeviceInfoStateImpl) then) =
      __$$DeviceInfoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? errorMessage,
      DeviceInfoModel? deviceInfo});
}

/// @nodoc
class __$$DeviceInfoStateImplCopyWithImpl<$Res>
    extends _$DeviceInfoStateCopyWithImpl<$Res, _$DeviceInfoStateImpl>
    implements _$$DeviceInfoStateImplCopyWith<$Res> {
  __$$DeviceInfoStateImplCopyWithImpl(
      _$DeviceInfoStateImpl _value, $Res Function(_$DeviceInfoStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? errorMessage = freezed,
    Object? deviceInfo = freezed,
  }) {
    return _then(_$DeviceInfoStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceInfo: freezed == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as DeviceInfoModel?,
    ));
  }
}

/// @nodoc

class _$DeviceInfoStateImpl implements _DeviceInfoState {
  const _$DeviceInfoStateImpl(
      {this.isLoading = false,
      this.hasError = false,
      this.errorMessage,
      this.deviceInfo});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool hasError;
  @override
  final String? errorMessage;
  @override
  final DeviceInfoModel? deviceInfo;

  @override
  String toString() {
    return 'DeviceInfoState(isLoading: $isLoading, hasError: $hasError, errorMessage: $errorMessage, deviceInfo: $deviceInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceInfoStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, hasError, errorMessage, deviceInfo);

  /// Create a copy of DeviceInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceInfoStateImplCopyWith<_$DeviceInfoStateImpl> get copyWith =>
      __$$DeviceInfoStateImplCopyWithImpl<_$DeviceInfoStateImpl>(
          this, _$identity);
}

abstract class _DeviceInfoState implements DeviceInfoState {
  const factory _DeviceInfoState(
      {final bool isLoading,
      final bool hasError,
      final String? errorMessage,
      final DeviceInfoModel? deviceInfo}) = _$DeviceInfoStateImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String? get errorMessage;
  @override
  DeviceInfoModel? get deviceInfo;

  /// Create a copy of DeviceInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceInfoStateImplCopyWith<_$DeviceInfoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_submission_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FormSubmissionModel _$FormSubmissionModelFromJson(Map<String, dynamic> json) {
  return _FormSubmissionModel.fromJson(json);
}

/// @nodoc
mixin _$FormSubmissionModel {
  FormData get formData => throw _privateConstructorUsedError;
  FormValuesModel get formValues => throw _privateConstructorUsedError;

  /// Serializes this FormSubmissionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FormSubmissionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FormSubmissionModelCopyWith<FormSubmissionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormSubmissionModelCopyWith<$Res> {
  factory $FormSubmissionModelCopyWith(
          FormSubmissionModel value, $Res Function(FormSubmissionModel) then) =
      _$FormSubmissionModelCopyWithImpl<$Res, FormSubmissionModel>;
  @useResult
  $Res call({FormData formData, FormValuesModel formValues});

  $FormDataCopyWith<$Res> get formData;
  $FormValuesModelCopyWith<$Res> get formValues;
}

/// @nodoc
class _$FormSubmissionModelCopyWithImpl<$Res, $Val extends FormSubmissionModel>
    implements $FormSubmissionModelCopyWith<$Res> {
  _$FormSubmissionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FormSubmissionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formData = null,
    Object? formValues = null,
  }) {
    return _then(_value.copyWith(
      formData: null == formData
          ? _value.formData
          : formData // ignore: cast_nullable_to_non_nullable
              as FormData,
      formValues: null == formValues
          ? _value.formValues
          : formValues // ignore: cast_nullable_to_non_nullable
              as FormValuesModel,
    ) as $Val);
  }

  /// Create a copy of FormSubmissionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FormDataCopyWith<$Res> get formData {
    return $FormDataCopyWith<$Res>(_value.formData, (value) {
      return _then(_value.copyWith(formData: value) as $Val);
    });
  }

  /// Create a copy of FormSubmissionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FormValuesModelCopyWith<$Res> get formValues {
    return $FormValuesModelCopyWith<$Res>(_value.formValues, (value) {
      return _then(_value.copyWith(formValues: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FormSubmissionModelImplCopyWith<$Res>
    implements $FormSubmissionModelCopyWith<$Res> {
  factory _$$FormSubmissionModelImplCopyWith(_$FormSubmissionModelImpl value,
          $Res Function(_$FormSubmissionModelImpl) then) =
      __$$FormSubmissionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FormData formData, FormValuesModel formValues});

  @override
  $FormDataCopyWith<$Res> get formData;
  @override
  $FormValuesModelCopyWith<$Res> get formValues;
}

/// @nodoc
class __$$FormSubmissionModelImplCopyWithImpl<$Res>
    extends _$FormSubmissionModelCopyWithImpl<$Res, _$FormSubmissionModelImpl>
    implements _$$FormSubmissionModelImplCopyWith<$Res> {
  __$$FormSubmissionModelImplCopyWithImpl(_$FormSubmissionModelImpl _value,
      $Res Function(_$FormSubmissionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FormSubmissionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formData = null,
    Object? formValues = null,
  }) {
    return _then(_$FormSubmissionModelImpl(
      formData: null == formData
          ? _value.formData
          : formData // ignore: cast_nullable_to_non_nullable
              as FormData,
      formValues: null == formValues
          ? _value.formValues
          : formValues // ignore: cast_nullable_to_non_nullable
              as FormValuesModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormSubmissionModelImpl implements _FormSubmissionModel {
  const _$FormSubmissionModelImpl(
      {required this.formData, required this.formValues});

  factory _$FormSubmissionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormSubmissionModelImplFromJson(json);

  @override
  final FormData formData;
  @override
  final FormValuesModel formValues;

  @override
  String toString() {
    return 'FormSubmissionModel(formData: $formData, formValues: $formValues)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormSubmissionModelImpl &&
            (identical(other.formData, formData) ||
                other.formData == formData) &&
            (identical(other.formValues, formValues) ||
                other.formValues == formValues));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, formData, formValues);

  /// Create a copy of FormSubmissionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormSubmissionModelImplCopyWith<_$FormSubmissionModelImpl> get copyWith =>
      __$$FormSubmissionModelImplCopyWithImpl<_$FormSubmissionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormSubmissionModelImplToJson(
      this,
    );
  }
}

abstract class _FormSubmissionModel implements FormSubmissionModel {
  const factory _FormSubmissionModel(
      {required final FormData formData,
      required final FormValuesModel formValues}) = _$FormSubmissionModelImpl;

  factory _FormSubmissionModel.fromJson(Map<String, dynamic> json) =
      _$FormSubmissionModelImpl.fromJson;

  @override
  FormData get formData;
  @override
  FormValuesModel get formValues;

  /// Create a copy of FormSubmissionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormSubmissionModelImplCopyWith<_$FormSubmissionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

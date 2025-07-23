// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dynamic_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DynamicFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DynamicFormModel formData) loadForm,
    required TResult Function(String key, dynamic value) updateFormValue,
    required TResult Function() nextStep,
    required TResult Function() previousStep,
    required TResult Function() submitForm,
    required TResult Function() resetFormState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DynamicFormModel formData)? loadForm,
    TResult? Function(String key, dynamic value)? updateFormValue,
    TResult? Function()? nextStep,
    TResult? Function()? previousStep,
    TResult? Function()? submitForm,
    TResult? Function()? resetFormState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DynamicFormModel formData)? loadForm,
    TResult Function(String key, dynamic value)? updateFormValue,
    TResult Function()? nextStep,
    TResult Function()? previousStep,
    TResult Function()? submitForm,
    TResult Function()? resetFormState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadForm value) loadForm,
    required TResult Function(_UpdateFormValue value) updateFormValue,
    required TResult Function(_NextStep value) nextStep,
    required TResult Function(_PreviousStep value) previousStep,
    required TResult Function(_SubmitForm value) submitForm,
    required TResult Function(_ResetFormState value) resetFormState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadForm value)? loadForm,
    TResult? Function(_UpdateFormValue value)? updateFormValue,
    TResult? Function(_NextStep value)? nextStep,
    TResult? Function(_PreviousStep value)? previousStep,
    TResult? Function(_SubmitForm value)? submitForm,
    TResult? Function(_ResetFormState value)? resetFormState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadForm value)? loadForm,
    TResult Function(_UpdateFormValue value)? updateFormValue,
    TResult Function(_NextStep value)? nextStep,
    TResult Function(_PreviousStep value)? previousStep,
    TResult Function(_SubmitForm value)? submitForm,
    TResult Function(_ResetFormState value)? resetFormState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicFormEventCopyWith<$Res> {
  factory $DynamicFormEventCopyWith(
          DynamicFormEvent value, $Res Function(DynamicFormEvent) then) =
      _$DynamicFormEventCopyWithImpl<$Res, DynamicFormEvent>;
}

/// @nodoc
class _$DynamicFormEventCopyWithImpl<$Res, $Val extends DynamicFormEvent>
    implements $DynamicFormEventCopyWith<$Res> {
  _$DynamicFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadFormImplCopyWith<$Res> {
  factory _$$LoadFormImplCopyWith(
          _$LoadFormImpl value, $Res Function(_$LoadFormImpl) then) =
      __$$LoadFormImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DynamicFormModel formData});

  $DynamicFormModelCopyWith<$Res> get formData;
}

/// @nodoc
class __$$LoadFormImplCopyWithImpl<$Res>
    extends _$DynamicFormEventCopyWithImpl<$Res, _$LoadFormImpl>
    implements _$$LoadFormImplCopyWith<$Res> {
  __$$LoadFormImplCopyWithImpl(
      _$LoadFormImpl _value, $Res Function(_$LoadFormImpl) _then)
      : super(_value, _then);

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formData = null,
  }) {
    return _then(_$LoadFormImpl(
      null == formData
          ? _value.formData
          : formData // ignore: cast_nullable_to_non_nullable
              as DynamicFormModel,
    ));
  }

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DynamicFormModelCopyWith<$Res> get formData {
    return $DynamicFormModelCopyWith<$Res>(_value.formData, (value) {
      return _then(_value.copyWith(formData: value));
    });
  }
}

/// @nodoc

class _$LoadFormImpl implements _LoadForm {
  const _$LoadFormImpl(this.formData);

  @override
  final DynamicFormModel formData;

  @override
  String toString() {
    return 'DynamicFormEvent.loadForm(formData: $formData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFormImpl &&
            (identical(other.formData, formData) ||
                other.formData == formData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formData);

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFormImplCopyWith<_$LoadFormImpl> get copyWith =>
      __$$LoadFormImplCopyWithImpl<_$LoadFormImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DynamicFormModel formData) loadForm,
    required TResult Function(String key, dynamic value) updateFormValue,
    required TResult Function() nextStep,
    required TResult Function() previousStep,
    required TResult Function() submitForm,
    required TResult Function() resetFormState,
  }) {
    return loadForm(formData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DynamicFormModel formData)? loadForm,
    TResult? Function(String key, dynamic value)? updateFormValue,
    TResult? Function()? nextStep,
    TResult? Function()? previousStep,
    TResult? Function()? submitForm,
    TResult? Function()? resetFormState,
  }) {
    return loadForm?.call(formData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DynamicFormModel formData)? loadForm,
    TResult Function(String key, dynamic value)? updateFormValue,
    TResult Function()? nextStep,
    TResult Function()? previousStep,
    TResult Function()? submitForm,
    TResult Function()? resetFormState,
    required TResult orElse(),
  }) {
    if (loadForm != null) {
      return loadForm(formData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadForm value) loadForm,
    required TResult Function(_UpdateFormValue value) updateFormValue,
    required TResult Function(_NextStep value) nextStep,
    required TResult Function(_PreviousStep value) previousStep,
    required TResult Function(_SubmitForm value) submitForm,
    required TResult Function(_ResetFormState value) resetFormState,
  }) {
    return loadForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadForm value)? loadForm,
    TResult? Function(_UpdateFormValue value)? updateFormValue,
    TResult? Function(_NextStep value)? nextStep,
    TResult? Function(_PreviousStep value)? previousStep,
    TResult? Function(_SubmitForm value)? submitForm,
    TResult? Function(_ResetFormState value)? resetFormState,
  }) {
    return loadForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadForm value)? loadForm,
    TResult Function(_UpdateFormValue value)? updateFormValue,
    TResult Function(_NextStep value)? nextStep,
    TResult Function(_PreviousStep value)? previousStep,
    TResult Function(_SubmitForm value)? submitForm,
    TResult Function(_ResetFormState value)? resetFormState,
    required TResult orElse(),
  }) {
    if (loadForm != null) {
      return loadForm(this);
    }
    return orElse();
  }
}

abstract class _LoadForm implements DynamicFormEvent {
  const factory _LoadForm(final DynamicFormModel formData) = _$LoadFormImpl;

  DynamicFormModel get formData;

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadFormImplCopyWith<_$LoadFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateFormValueImplCopyWith<$Res> {
  factory _$$UpdateFormValueImplCopyWith(_$UpdateFormValueImpl value,
          $Res Function(_$UpdateFormValueImpl) then) =
      __$$UpdateFormValueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String key, dynamic value});
}

/// @nodoc
class __$$UpdateFormValueImplCopyWithImpl<$Res>
    extends _$DynamicFormEventCopyWithImpl<$Res, _$UpdateFormValueImpl>
    implements _$$UpdateFormValueImplCopyWith<$Res> {
  __$$UpdateFormValueImplCopyWithImpl(
      _$UpdateFormValueImpl _value, $Res Function(_$UpdateFormValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = freezed,
  }) {
    return _then(_$UpdateFormValueImpl(
      null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$UpdateFormValueImpl implements _UpdateFormValue {
  const _$UpdateFormValueImpl(this.key, this.value);

  @override
  final String key;
  @override
  final dynamic value;

  @override
  String toString() {
    return 'DynamicFormEvent.updateFormValue(key: $key, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFormValueImpl &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, key, const DeepCollectionEquality().hash(value));

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFormValueImplCopyWith<_$UpdateFormValueImpl> get copyWith =>
      __$$UpdateFormValueImplCopyWithImpl<_$UpdateFormValueImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DynamicFormModel formData) loadForm,
    required TResult Function(String key, dynamic value) updateFormValue,
    required TResult Function() nextStep,
    required TResult Function() previousStep,
    required TResult Function() submitForm,
    required TResult Function() resetFormState,
  }) {
    return updateFormValue(key, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DynamicFormModel formData)? loadForm,
    TResult? Function(String key, dynamic value)? updateFormValue,
    TResult? Function()? nextStep,
    TResult? Function()? previousStep,
    TResult? Function()? submitForm,
    TResult? Function()? resetFormState,
  }) {
    return updateFormValue?.call(key, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DynamicFormModel formData)? loadForm,
    TResult Function(String key, dynamic value)? updateFormValue,
    TResult Function()? nextStep,
    TResult Function()? previousStep,
    TResult Function()? submitForm,
    TResult Function()? resetFormState,
    required TResult orElse(),
  }) {
    if (updateFormValue != null) {
      return updateFormValue(key, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadForm value) loadForm,
    required TResult Function(_UpdateFormValue value) updateFormValue,
    required TResult Function(_NextStep value) nextStep,
    required TResult Function(_PreviousStep value) previousStep,
    required TResult Function(_SubmitForm value) submitForm,
    required TResult Function(_ResetFormState value) resetFormState,
  }) {
    return updateFormValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadForm value)? loadForm,
    TResult? Function(_UpdateFormValue value)? updateFormValue,
    TResult? Function(_NextStep value)? nextStep,
    TResult? Function(_PreviousStep value)? previousStep,
    TResult? Function(_SubmitForm value)? submitForm,
    TResult? Function(_ResetFormState value)? resetFormState,
  }) {
    return updateFormValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadForm value)? loadForm,
    TResult Function(_UpdateFormValue value)? updateFormValue,
    TResult Function(_NextStep value)? nextStep,
    TResult Function(_PreviousStep value)? previousStep,
    TResult Function(_SubmitForm value)? submitForm,
    TResult Function(_ResetFormState value)? resetFormState,
    required TResult orElse(),
  }) {
    if (updateFormValue != null) {
      return updateFormValue(this);
    }
    return orElse();
  }
}

abstract class _UpdateFormValue implements DynamicFormEvent {
  const factory _UpdateFormValue(final String key, final dynamic value) =
      _$UpdateFormValueImpl;

  String get key;
  dynamic get value;

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateFormValueImplCopyWith<_$UpdateFormValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NextStepImplCopyWith<$Res> {
  factory _$$NextStepImplCopyWith(
          _$NextStepImpl value, $Res Function(_$NextStepImpl) then) =
      __$$NextStepImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextStepImplCopyWithImpl<$Res>
    extends _$DynamicFormEventCopyWithImpl<$Res, _$NextStepImpl>
    implements _$$NextStepImplCopyWith<$Res> {
  __$$NextStepImplCopyWithImpl(
      _$NextStepImpl _value, $Res Function(_$NextStepImpl) _then)
      : super(_value, _then);

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NextStepImpl implements _NextStep {
  const _$NextStepImpl();

  @override
  String toString() {
    return 'DynamicFormEvent.nextStep()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NextStepImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DynamicFormModel formData) loadForm,
    required TResult Function(String key, dynamic value) updateFormValue,
    required TResult Function() nextStep,
    required TResult Function() previousStep,
    required TResult Function() submitForm,
    required TResult Function() resetFormState,
  }) {
    return nextStep();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DynamicFormModel formData)? loadForm,
    TResult? Function(String key, dynamic value)? updateFormValue,
    TResult? Function()? nextStep,
    TResult? Function()? previousStep,
    TResult? Function()? submitForm,
    TResult? Function()? resetFormState,
  }) {
    return nextStep?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DynamicFormModel formData)? loadForm,
    TResult Function(String key, dynamic value)? updateFormValue,
    TResult Function()? nextStep,
    TResult Function()? previousStep,
    TResult Function()? submitForm,
    TResult Function()? resetFormState,
    required TResult orElse(),
  }) {
    if (nextStep != null) {
      return nextStep();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadForm value) loadForm,
    required TResult Function(_UpdateFormValue value) updateFormValue,
    required TResult Function(_NextStep value) nextStep,
    required TResult Function(_PreviousStep value) previousStep,
    required TResult Function(_SubmitForm value) submitForm,
    required TResult Function(_ResetFormState value) resetFormState,
  }) {
    return nextStep(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadForm value)? loadForm,
    TResult? Function(_UpdateFormValue value)? updateFormValue,
    TResult? Function(_NextStep value)? nextStep,
    TResult? Function(_PreviousStep value)? previousStep,
    TResult? Function(_SubmitForm value)? submitForm,
    TResult? Function(_ResetFormState value)? resetFormState,
  }) {
    return nextStep?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadForm value)? loadForm,
    TResult Function(_UpdateFormValue value)? updateFormValue,
    TResult Function(_NextStep value)? nextStep,
    TResult Function(_PreviousStep value)? previousStep,
    TResult Function(_SubmitForm value)? submitForm,
    TResult Function(_ResetFormState value)? resetFormState,
    required TResult orElse(),
  }) {
    if (nextStep != null) {
      return nextStep(this);
    }
    return orElse();
  }
}

abstract class _NextStep implements DynamicFormEvent {
  const factory _NextStep() = _$NextStepImpl;
}

/// @nodoc
abstract class _$$PreviousStepImplCopyWith<$Res> {
  factory _$$PreviousStepImplCopyWith(
          _$PreviousStepImpl value, $Res Function(_$PreviousStepImpl) then) =
      __$$PreviousStepImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PreviousStepImplCopyWithImpl<$Res>
    extends _$DynamicFormEventCopyWithImpl<$Res, _$PreviousStepImpl>
    implements _$$PreviousStepImplCopyWith<$Res> {
  __$$PreviousStepImplCopyWithImpl(
      _$PreviousStepImpl _value, $Res Function(_$PreviousStepImpl) _then)
      : super(_value, _then);

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PreviousStepImpl implements _PreviousStep {
  const _$PreviousStepImpl();

  @override
  String toString() {
    return 'DynamicFormEvent.previousStep()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PreviousStepImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DynamicFormModel formData) loadForm,
    required TResult Function(String key, dynamic value) updateFormValue,
    required TResult Function() nextStep,
    required TResult Function() previousStep,
    required TResult Function() submitForm,
    required TResult Function() resetFormState,
  }) {
    return previousStep();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DynamicFormModel formData)? loadForm,
    TResult? Function(String key, dynamic value)? updateFormValue,
    TResult? Function()? nextStep,
    TResult? Function()? previousStep,
    TResult? Function()? submitForm,
    TResult? Function()? resetFormState,
  }) {
    return previousStep?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DynamicFormModel formData)? loadForm,
    TResult Function(String key, dynamic value)? updateFormValue,
    TResult Function()? nextStep,
    TResult Function()? previousStep,
    TResult Function()? submitForm,
    TResult Function()? resetFormState,
    required TResult orElse(),
  }) {
    if (previousStep != null) {
      return previousStep();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadForm value) loadForm,
    required TResult Function(_UpdateFormValue value) updateFormValue,
    required TResult Function(_NextStep value) nextStep,
    required TResult Function(_PreviousStep value) previousStep,
    required TResult Function(_SubmitForm value) submitForm,
    required TResult Function(_ResetFormState value) resetFormState,
  }) {
    return previousStep(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadForm value)? loadForm,
    TResult? Function(_UpdateFormValue value)? updateFormValue,
    TResult? Function(_NextStep value)? nextStep,
    TResult? Function(_PreviousStep value)? previousStep,
    TResult? Function(_SubmitForm value)? submitForm,
    TResult? Function(_ResetFormState value)? resetFormState,
  }) {
    return previousStep?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadForm value)? loadForm,
    TResult Function(_UpdateFormValue value)? updateFormValue,
    TResult Function(_NextStep value)? nextStep,
    TResult Function(_PreviousStep value)? previousStep,
    TResult Function(_SubmitForm value)? submitForm,
    TResult Function(_ResetFormState value)? resetFormState,
    required TResult orElse(),
  }) {
    if (previousStep != null) {
      return previousStep(this);
    }
    return orElse();
  }
}

abstract class _PreviousStep implements DynamicFormEvent {
  const factory _PreviousStep() = _$PreviousStepImpl;
}

/// @nodoc
abstract class _$$SubmitFormImplCopyWith<$Res> {
  factory _$$SubmitFormImplCopyWith(
          _$SubmitFormImpl value, $Res Function(_$SubmitFormImpl) then) =
      __$$SubmitFormImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitFormImplCopyWithImpl<$Res>
    extends _$DynamicFormEventCopyWithImpl<$Res, _$SubmitFormImpl>
    implements _$$SubmitFormImplCopyWith<$Res> {
  __$$SubmitFormImplCopyWithImpl(
      _$SubmitFormImpl _value, $Res Function(_$SubmitFormImpl) _then)
      : super(_value, _then);

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubmitFormImpl implements _SubmitForm {
  const _$SubmitFormImpl();

  @override
  String toString() {
    return 'DynamicFormEvent.submitForm()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitFormImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DynamicFormModel formData) loadForm,
    required TResult Function(String key, dynamic value) updateFormValue,
    required TResult Function() nextStep,
    required TResult Function() previousStep,
    required TResult Function() submitForm,
    required TResult Function() resetFormState,
  }) {
    return submitForm();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DynamicFormModel formData)? loadForm,
    TResult? Function(String key, dynamic value)? updateFormValue,
    TResult? Function()? nextStep,
    TResult? Function()? previousStep,
    TResult? Function()? submitForm,
    TResult? Function()? resetFormState,
  }) {
    return submitForm?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DynamicFormModel formData)? loadForm,
    TResult Function(String key, dynamic value)? updateFormValue,
    TResult Function()? nextStep,
    TResult Function()? previousStep,
    TResult Function()? submitForm,
    TResult Function()? resetFormState,
    required TResult orElse(),
  }) {
    if (submitForm != null) {
      return submitForm();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadForm value) loadForm,
    required TResult Function(_UpdateFormValue value) updateFormValue,
    required TResult Function(_NextStep value) nextStep,
    required TResult Function(_PreviousStep value) previousStep,
    required TResult Function(_SubmitForm value) submitForm,
    required TResult Function(_ResetFormState value) resetFormState,
  }) {
    return submitForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadForm value)? loadForm,
    TResult? Function(_UpdateFormValue value)? updateFormValue,
    TResult? Function(_NextStep value)? nextStep,
    TResult? Function(_PreviousStep value)? previousStep,
    TResult? Function(_SubmitForm value)? submitForm,
    TResult? Function(_ResetFormState value)? resetFormState,
  }) {
    return submitForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadForm value)? loadForm,
    TResult Function(_UpdateFormValue value)? updateFormValue,
    TResult Function(_NextStep value)? nextStep,
    TResult Function(_PreviousStep value)? previousStep,
    TResult Function(_SubmitForm value)? submitForm,
    TResult Function(_ResetFormState value)? resetFormState,
    required TResult orElse(),
  }) {
    if (submitForm != null) {
      return submitForm(this);
    }
    return orElse();
  }
}

abstract class _SubmitForm implements DynamicFormEvent {
  const factory _SubmitForm() = _$SubmitFormImpl;
}

/// @nodoc
abstract class _$$ResetFormStateImplCopyWith<$Res> {
  factory _$$ResetFormStateImplCopyWith(_$ResetFormStateImpl value,
          $Res Function(_$ResetFormStateImpl) then) =
      __$$ResetFormStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetFormStateImplCopyWithImpl<$Res>
    extends _$DynamicFormEventCopyWithImpl<$Res, _$ResetFormStateImpl>
    implements _$$ResetFormStateImplCopyWith<$Res> {
  __$$ResetFormStateImplCopyWithImpl(
      _$ResetFormStateImpl _value, $Res Function(_$ResetFormStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DynamicFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetFormStateImpl implements _ResetFormState {
  const _$ResetFormStateImpl();

  @override
  String toString() {
    return 'DynamicFormEvent.resetFormState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetFormStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DynamicFormModel formData) loadForm,
    required TResult Function(String key, dynamic value) updateFormValue,
    required TResult Function() nextStep,
    required TResult Function() previousStep,
    required TResult Function() submitForm,
    required TResult Function() resetFormState,
  }) {
    return resetFormState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DynamicFormModel formData)? loadForm,
    TResult? Function(String key, dynamic value)? updateFormValue,
    TResult? Function()? nextStep,
    TResult? Function()? previousStep,
    TResult? Function()? submitForm,
    TResult? Function()? resetFormState,
  }) {
    return resetFormState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DynamicFormModel formData)? loadForm,
    TResult Function(String key, dynamic value)? updateFormValue,
    TResult Function()? nextStep,
    TResult Function()? previousStep,
    TResult Function()? submitForm,
    TResult Function()? resetFormState,
    required TResult orElse(),
  }) {
    if (resetFormState != null) {
      return resetFormState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadForm value) loadForm,
    required TResult Function(_UpdateFormValue value) updateFormValue,
    required TResult Function(_NextStep value) nextStep,
    required TResult Function(_PreviousStep value) previousStep,
    required TResult Function(_SubmitForm value) submitForm,
    required TResult Function(_ResetFormState value) resetFormState,
  }) {
    return resetFormState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadForm value)? loadForm,
    TResult? Function(_UpdateFormValue value)? updateFormValue,
    TResult? Function(_NextStep value)? nextStep,
    TResult? Function(_PreviousStep value)? previousStep,
    TResult? Function(_SubmitForm value)? submitForm,
    TResult? Function(_ResetFormState value)? resetFormState,
  }) {
    return resetFormState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadForm value)? loadForm,
    TResult Function(_UpdateFormValue value)? updateFormValue,
    TResult Function(_NextStep value)? nextStep,
    TResult Function(_PreviousStep value)? previousStep,
    TResult Function(_SubmitForm value)? submitForm,
    TResult Function(_ResetFormState value)? resetFormState,
    required TResult orElse(),
  }) {
    if (resetFormState != null) {
      return resetFormState(this);
    }
    return orElse();
  }
}

abstract class _ResetFormState implements DynamicFormEvent {
  const factory _ResetFormState() = _$ResetFormStateImpl;
}

/// @nodoc
mixin _$DynamicFormState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSubmitted => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  int get currentStep => throw _privateConstructorUsedError;
  FormData? get formData => throw _privateConstructorUsedError;
  FormValuesModel get formValues => throw _privateConstructorUsedError;

  /// Create a copy of DynamicFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DynamicFormStateCopyWith<DynamicFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicFormStateCopyWith<$Res> {
  factory $DynamicFormStateCopyWith(
          DynamicFormState value, $Res Function(DynamicFormState) then) =
      _$DynamicFormStateCopyWithImpl<$Res, DynamicFormState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isSubmitted,
      bool isValid,
      int currentStep,
      FormData? formData,
      FormValuesModel formValues});

  $FormDataCopyWith<$Res>? get formData;
  $FormValuesModelCopyWith<$Res> get formValues;
}

/// @nodoc
class _$DynamicFormStateCopyWithImpl<$Res, $Val extends DynamicFormState>
    implements $DynamicFormStateCopyWith<$Res> {
  _$DynamicFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DynamicFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSubmitted = null,
    Object? isValid = null,
    Object? currentStep = null,
    Object? formData = freezed,
    Object? formValues = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitted: null == isSubmitted
          ? _value.isSubmitted
          : isSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      currentStep: null == currentStep
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as int,
      formData: freezed == formData
          ? _value.formData
          : formData // ignore: cast_nullable_to_non_nullable
              as FormData?,
      formValues: null == formValues
          ? _value.formValues
          : formValues // ignore: cast_nullable_to_non_nullable
              as FormValuesModel,
    ) as $Val);
  }

  /// Create a copy of DynamicFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FormDataCopyWith<$Res>? get formData {
    if (_value.formData == null) {
      return null;
    }

    return $FormDataCopyWith<$Res>(_value.formData!, (value) {
      return _then(_value.copyWith(formData: value) as $Val);
    });
  }

  /// Create a copy of DynamicFormState
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
abstract class _$$DynamicFormStateImplCopyWith<$Res>
    implements $DynamicFormStateCopyWith<$Res> {
  factory _$$DynamicFormStateImplCopyWith(_$DynamicFormStateImpl value,
          $Res Function(_$DynamicFormStateImpl) then) =
      __$$DynamicFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isSubmitted,
      bool isValid,
      int currentStep,
      FormData? formData,
      FormValuesModel formValues});

  @override
  $FormDataCopyWith<$Res>? get formData;
  @override
  $FormValuesModelCopyWith<$Res> get formValues;
}

/// @nodoc
class __$$DynamicFormStateImplCopyWithImpl<$Res>
    extends _$DynamicFormStateCopyWithImpl<$Res, _$DynamicFormStateImpl>
    implements _$$DynamicFormStateImplCopyWith<$Res> {
  __$$DynamicFormStateImplCopyWithImpl(_$DynamicFormStateImpl _value,
      $Res Function(_$DynamicFormStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DynamicFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSubmitted = null,
    Object? isValid = null,
    Object? currentStep = null,
    Object? formData = freezed,
    Object? formValues = null,
  }) {
    return _then(_$DynamicFormStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitted: null == isSubmitted
          ? _value.isSubmitted
          : isSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      currentStep: null == currentStep
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as int,
      formData: freezed == formData
          ? _value.formData
          : formData // ignore: cast_nullable_to_non_nullable
              as FormData?,
      formValues: null == formValues
          ? _value.formValues
          : formValues // ignore: cast_nullable_to_non_nullable
              as FormValuesModel,
    ));
  }
}

/// @nodoc

class _$DynamicFormStateImpl implements _DynamicFormState {
  const _$DynamicFormStateImpl(
      {this.isLoading = true,
      this.isSubmitted = false,
      this.isValid = false,
      this.currentStep = 0,
      this.formData,
      this.formValues = const FormValuesModel()});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isSubmitted;
  @override
  @JsonKey()
  final bool isValid;
  @override
  @JsonKey()
  final int currentStep;
  @override
  final FormData? formData;
  @override
  @JsonKey()
  final FormValuesModel formValues;

  @override
  String toString() {
    return 'DynamicFormState(isLoading: $isLoading, isSubmitted: $isSubmitted, isValid: $isValid, currentStep: $currentStep, formData: $formData, formValues: $formValues)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicFormStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSubmitted, isSubmitted) ||
                other.isSubmitted == isSubmitted) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.currentStep, currentStep) ||
                other.currentStep == currentStep) &&
            (identical(other.formData, formData) ||
                other.formData == formData) &&
            (identical(other.formValues, formValues) ||
                other.formValues == formValues));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isSubmitted, isValid,
      currentStep, formData, formValues);

  /// Create a copy of DynamicFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DynamicFormStateImplCopyWith<_$DynamicFormStateImpl> get copyWith =>
      __$$DynamicFormStateImplCopyWithImpl<_$DynamicFormStateImpl>(
          this, _$identity);
}

abstract class _DynamicFormState implements DynamicFormState {
  const factory _DynamicFormState(
      {final bool isLoading,
      final bool isSubmitted,
      final bool isValid,
      final int currentStep,
      final FormData? formData,
      final FormValuesModel formValues}) = _$DynamicFormStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isSubmitted;
  @override
  bool get isValid;
  @override
  int get currentStep;
  @override
  FormData? get formData;
  @override
  FormValuesModel get formValues;

  /// Create a copy of DynamicFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DynamicFormStateImplCopyWith<_$DynamicFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

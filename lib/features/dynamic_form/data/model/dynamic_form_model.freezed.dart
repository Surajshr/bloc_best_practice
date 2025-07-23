// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dynamic_form_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DynamicFormModel _$DynamicFormModelFromJson(Map<String, dynamic> json) {
  return _DynamicFormModel.fromJson(json);
}

/// @nodoc
mixin _$DynamicFormModel {
  FormData get form => throw _privateConstructorUsedError;

  /// Serializes this DynamicFormModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DynamicFormModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DynamicFormModelCopyWith<DynamicFormModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicFormModelCopyWith<$Res> {
  factory $DynamicFormModelCopyWith(
          DynamicFormModel value, $Res Function(DynamicFormModel) then) =
      _$DynamicFormModelCopyWithImpl<$Res, DynamicFormModel>;
  @useResult
  $Res call({FormData form});

  $FormDataCopyWith<$Res> get form;
}

/// @nodoc
class _$DynamicFormModelCopyWithImpl<$Res, $Val extends DynamicFormModel>
    implements $DynamicFormModelCopyWith<$Res> {
  _$DynamicFormModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DynamicFormModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? form = null,
  }) {
    return _then(_value.copyWith(
      form: null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as FormData,
    ) as $Val);
  }

  /// Create a copy of DynamicFormModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FormDataCopyWith<$Res> get form {
    return $FormDataCopyWith<$Res>(_value.form, (value) {
      return _then(_value.copyWith(form: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DynamicFormModelImplCopyWith<$Res>
    implements $DynamicFormModelCopyWith<$Res> {
  factory _$$DynamicFormModelImplCopyWith(_$DynamicFormModelImpl value,
          $Res Function(_$DynamicFormModelImpl) then) =
      __$$DynamicFormModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FormData form});

  @override
  $FormDataCopyWith<$Res> get form;
}

/// @nodoc
class __$$DynamicFormModelImplCopyWithImpl<$Res>
    extends _$DynamicFormModelCopyWithImpl<$Res, _$DynamicFormModelImpl>
    implements _$$DynamicFormModelImplCopyWith<$Res> {
  __$$DynamicFormModelImplCopyWithImpl(_$DynamicFormModelImpl _value,
      $Res Function(_$DynamicFormModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DynamicFormModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? form = null,
  }) {
    return _then(_$DynamicFormModelImpl(
      form: null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as FormData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DynamicFormModelImpl implements _DynamicFormModel {
  const _$DynamicFormModelImpl({required this.form});

  factory _$DynamicFormModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DynamicFormModelImplFromJson(json);

  @override
  final FormData form;

  @override
  String toString() {
    return 'DynamicFormModel(form: $form)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicFormModelImpl &&
            (identical(other.form, form) || other.form == form));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, form);

  /// Create a copy of DynamicFormModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DynamicFormModelImplCopyWith<_$DynamicFormModelImpl> get copyWith =>
      __$$DynamicFormModelImplCopyWithImpl<_$DynamicFormModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DynamicFormModelImplToJson(
      this,
    );
  }
}

abstract class _DynamicFormModel implements DynamicFormModel {
  const factory _DynamicFormModel({required final FormData form}) =
      _$DynamicFormModelImpl;

  factory _DynamicFormModel.fromJson(Map<String, dynamic> json) =
      _$DynamicFormModelImpl.fromJson;

  @override
  FormData get form;

  /// Create a copy of DynamicFormModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DynamicFormModelImplCopyWith<_$DynamicFormModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FormData _$FormDataFromJson(Map<String, dynamic> json) {
  return _FormData.fromJson(json);
}

/// @nodoc
mixin _$FormData {
  String get title => throw _privateConstructorUsedError;
  List<FormStep> get steps => throw _privateConstructorUsedError;

  /// Serializes this FormData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FormData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FormDataCopyWith<FormData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormDataCopyWith<$Res> {
  factory $FormDataCopyWith(FormData value, $Res Function(FormData) then) =
      _$FormDataCopyWithImpl<$Res, FormData>;
  @useResult
  $Res call({String title, List<FormStep> steps});
}

/// @nodoc
class _$FormDataCopyWithImpl<$Res, $Val extends FormData>
    implements $FormDataCopyWith<$Res> {
  _$FormDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FormData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? steps = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<FormStep>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormDataImplCopyWith<$Res>
    implements $FormDataCopyWith<$Res> {
  factory _$$FormDataImplCopyWith(
          _$FormDataImpl value, $Res Function(_$FormDataImpl) then) =
      __$$FormDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, List<FormStep> steps});
}

/// @nodoc
class __$$FormDataImplCopyWithImpl<$Res>
    extends _$FormDataCopyWithImpl<$Res, _$FormDataImpl>
    implements _$$FormDataImplCopyWith<$Res> {
  __$$FormDataImplCopyWithImpl(
      _$FormDataImpl _value, $Res Function(_$FormDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of FormData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? steps = null,
  }) {
    return _then(_$FormDataImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      steps: null == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<FormStep>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormDataImpl implements _FormData {
  const _$FormDataImpl(
      {required this.title, required final List<FormStep> steps})
      : _steps = steps;

  factory _$FormDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormDataImplFromJson(json);

  @override
  final String title;
  final List<FormStep> _steps;
  @override
  List<FormStep> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  String toString() {
    return 'FormData(title: $title, steps: $steps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormDataImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._steps, _steps));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(_steps));

  /// Create a copy of FormData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormDataImplCopyWith<_$FormDataImpl> get copyWith =>
      __$$FormDataImplCopyWithImpl<_$FormDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormDataImplToJson(
      this,
    );
  }
}

abstract class _FormData implements FormData {
  const factory _FormData(
      {required final String title,
      required final List<FormStep> steps}) = _$FormDataImpl;

  factory _FormData.fromJson(Map<String, dynamic> json) =
      _$FormDataImpl.fromJson;

  @override
  String get title;
  @override
  List<FormStep> get steps;

  /// Create a copy of FormData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormDataImplCopyWith<_$FormDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FormStep _$FormStepFromJson(Map<String, dynamic> json) {
  return _FormStep.fromJson(json);
}

/// @nodoc
mixin _$FormStep {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<FormInput> get inputs => throw _privateConstructorUsedError;

  /// Serializes this FormStep to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FormStep
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FormStepCopyWith<FormStep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormStepCopyWith<$Res> {
  factory $FormStepCopyWith(FormStep value, $Res Function(FormStep) then) =
      _$FormStepCopyWithImpl<$Res, FormStep>;
  @useResult
  $Res call({String title, String description, List<FormInput> inputs});
}

/// @nodoc
class _$FormStepCopyWithImpl<$Res, $Val extends FormStep>
    implements $FormStepCopyWith<$Res> {
  _$FormStepCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FormStep
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? inputs = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      inputs: null == inputs
          ? _value.inputs
          : inputs // ignore: cast_nullable_to_non_nullable
              as List<FormInput>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormStepImplCopyWith<$Res>
    implements $FormStepCopyWith<$Res> {
  factory _$$FormStepImplCopyWith(
          _$FormStepImpl value, $Res Function(_$FormStepImpl) then) =
      __$$FormStepImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description, List<FormInput> inputs});
}

/// @nodoc
class __$$FormStepImplCopyWithImpl<$Res>
    extends _$FormStepCopyWithImpl<$Res, _$FormStepImpl>
    implements _$$FormStepImplCopyWith<$Res> {
  __$$FormStepImplCopyWithImpl(
      _$FormStepImpl _value, $Res Function(_$FormStepImpl) _then)
      : super(_value, _then);

  /// Create a copy of FormStep
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? inputs = null,
  }) {
    return _then(_$FormStepImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      inputs: null == inputs
          ? _value._inputs
          : inputs // ignore: cast_nullable_to_non_nullable
              as List<FormInput>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormStepImpl implements _FormStep {
  const _$FormStepImpl(
      {required this.title,
      required this.description,
      required final List<FormInput> inputs})
      : _inputs = inputs;

  factory _$FormStepImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormStepImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  final List<FormInput> _inputs;
  @override
  List<FormInput> get inputs {
    if (_inputs is EqualUnmodifiableListView) return _inputs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inputs);
  }

  @override
  String toString() {
    return 'FormStep(title: $title, description: $description, inputs: $inputs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormStepImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._inputs, _inputs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description,
      const DeepCollectionEquality().hash(_inputs));

  /// Create a copy of FormStep
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormStepImplCopyWith<_$FormStepImpl> get copyWith =>
      __$$FormStepImplCopyWithImpl<_$FormStepImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormStepImplToJson(
      this,
    );
  }
}

abstract class _FormStep implements FormStep {
  const factory _FormStep(
      {required final String title,
      required final String description,
      required final List<FormInput> inputs}) = _$FormStepImpl;

  factory _FormStep.fromJson(Map<String, dynamic> json) =
      _$FormStepImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  List<FormInput> get inputs;

  /// Create a copy of FormStep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormStepImplCopyWith<_$FormStepImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FormInput _$FormInputFromJson(Map<String, dynamic> json) {
  return _FormInput.fromJson(json);
}

/// @nodoc
mixin _$FormInput {
  String get key => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  bool get required => throw _privateConstructorUsedError;
  dynamic get defaultValue => throw _privateConstructorUsedError;
  ValidationRules? get validation => throw _privateConstructorUsedError;
  List<String>? get options => throw _privateConstructorUsedError;

  /// Serializes this FormInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FormInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FormInputCopyWith<FormInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormInputCopyWith<$Res> {
  factory $FormInputCopyWith(FormInput value, $Res Function(FormInput) then) =
      _$FormInputCopyWithImpl<$Res, FormInput>;
  @useResult
  $Res call(
      {String key,
      String type,
      String label,
      bool required,
      dynamic defaultValue,
      ValidationRules? validation,
      List<String>? options});

  $ValidationRulesCopyWith<$Res>? get validation;
}

/// @nodoc
class _$FormInputCopyWithImpl<$Res, $Val extends FormInput>
    implements $FormInputCopyWith<$Res> {
  _$FormInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FormInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? type = null,
    Object? label = null,
    Object? required = null,
    Object? defaultValue = freezed,
    Object? validation = freezed,
    Object? options = freezed,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultValue: freezed == defaultValue
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      validation: freezed == validation
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as ValidationRules?,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  /// Create a copy of FormInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ValidationRulesCopyWith<$Res>? get validation {
    if (_value.validation == null) {
      return null;
    }

    return $ValidationRulesCopyWith<$Res>(_value.validation!, (value) {
      return _then(_value.copyWith(validation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FormInputImplCopyWith<$Res>
    implements $FormInputCopyWith<$Res> {
  factory _$$FormInputImplCopyWith(
          _$FormInputImpl value, $Res Function(_$FormInputImpl) then) =
      __$$FormInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String key,
      String type,
      String label,
      bool required,
      dynamic defaultValue,
      ValidationRules? validation,
      List<String>? options});

  @override
  $ValidationRulesCopyWith<$Res>? get validation;
}

/// @nodoc
class __$$FormInputImplCopyWithImpl<$Res>
    extends _$FormInputCopyWithImpl<$Res, _$FormInputImpl>
    implements _$$FormInputImplCopyWith<$Res> {
  __$$FormInputImplCopyWithImpl(
      _$FormInputImpl _value, $Res Function(_$FormInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of FormInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? type = null,
    Object? label = null,
    Object? required = null,
    Object? defaultValue = freezed,
    Object? validation = freezed,
    Object? options = freezed,
  }) {
    return _then(_$FormInputImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultValue: freezed == defaultValue
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      validation: freezed == validation
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as ValidationRules?,
      options: freezed == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormInputImpl implements _FormInput {
  const _$FormInputImpl(
      {required this.key,
      required this.type,
      required this.label,
      required this.required,
      this.defaultValue = null,
      this.validation,
      final List<String>? options})
      : _options = options;

  factory _$FormInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormInputImplFromJson(json);

  @override
  final String key;
  @override
  final String type;
  @override
  final String label;
  @override
  final bool required;
  @override
  @JsonKey()
  final dynamic defaultValue;
  @override
  final ValidationRules? validation;
  final List<String>? _options;
  @override
  List<String>? get options {
    final value = _options;
    if (value == null) return null;
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FormInput(key: $key, type: $type, label: $label, required: $required, defaultValue: $defaultValue, validation: $validation, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormInputImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.required, required) ||
                other.required == required) &&
            const DeepCollectionEquality()
                .equals(other.defaultValue, defaultValue) &&
            (identical(other.validation, validation) ||
                other.validation == validation) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      key,
      type,
      label,
      required,
      const DeepCollectionEquality().hash(defaultValue),
      validation,
      const DeepCollectionEquality().hash(_options));

  /// Create a copy of FormInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormInputImplCopyWith<_$FormInputImpl> get copyWith =>
      __$$FormInputImplCopyWithImpl<_$FormInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormInputImplToJson(
      this,
    );
  }
}

abstract class _FormInput implements FormInput {
  const factory _FormInput(
      {required final String key,
      required final String type,
      required final String label,
      required final bool required,
      final dynamic defaultValue,
      final ValidationRules? validation,
      final List<String>? options}) = _$FormInputImpl;

  factory _FormInput.fromJson(Map<String, dynamic> json) =
      _$FormInputImpl.fromJson;

  @override
  String get key;
  @override
  String get type;
  @override
  String get label;
  @override
  bool get required;
  @override
  dynamic get defaultValue;
  @override
  ValidationRules? get validation;
  @override
  List<String>? get options;

  /// Create a copy of FormInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormInputImplCopyWith<_$FormInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ValidationRules _$ValidationRulesFromJson(Map<String, dynamic> json) {
  return _ValidationRules.fromJson(json);
}

/// @nodoc
mixin _$ValidationRules {
  bool get numberOnly => throw _privateConstructorUsedError;

  /// Serializes this ValidationRules to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ValidationRules
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValidationRulesCopyWith<ValidationRules> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidationRulesCopyWith<$Res> {
  factory $ValidationRulesCopyWith(
          ValidationRules value, $Res Function(ValidationRules) then) =
      _$ValidationRulesCopyWithImpl<$Res, ValidationRules>;
  @useResult
  $Res call({bool numberOnly});
}

/// @nodoc
class _$ValidationRulesCopyWithImpl<$Res, $Val extends ValidationRules>
    implements $ValidationRulesCopyWith<$Res> {
  _$ValidationRulesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValidationRules
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberOnly = null,
  }) {
    return _then(_value.copyWith(
      numberOnly: null == numberOnly
          ? _value.numberOnly
          : numberOnly // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidationRulesImplCopyWith<$Res>
    implements $ValidationRulesCopyWith<$Res> {
  factory _$$ValidationRulesImplCopyWith(_$ValidationRulesImpl value,
          $Res Function(_$ValidationRulesImpl) then) =
      __$$ValidationRulesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool numberOnly});
}

/// @nodoc
class __$$ValidationRulesImplCopyWithImpl<$Res>
    extends _$ValidationRulesCopyWithImpl<$Res, _$ValidationRulesImpl>
    implements _$$ValidationRulesImplCopyWith<$Res> {
  __$$ValidationRulesImplCopyWithImpl(
      _$ValidationRulesImpl _value, $Res Function(_$ValidationRulesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ValidationRules
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberOnly = null,
  }) {
    return _then(_$ValidationRulesImpl(
      numberOnly: null == numberOnly
          ? _value.numberOnly
          : numberOnly // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidationRulesImpl implements _ValidationRules {
  const _$ValidationRulesImpl({this.numberOnly = false});

  factory _$ValidationRulesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidationRulesImplFromJson(json);

  @override
  @JsonKey()
  final bool numberOnly;

  @override
  String toString() {
    return 'ValidationRules(numberOnly: $numberOnly)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationRulesImpl &&
            (identical(other.numberOnly, numberOnly) ||
                other.numberOnly == numberOnly));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, numberOnly);

  /// Create a copy of ValidationRules
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationRulesImplCopyWith<_$ValidationRulesImpl> get copyWith =>
      __$$ValidationRulesImplCopyWithImpl<_$ValidationRulesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidationRulesImplToJson(
      this,
    );
  }
}

abstract class _ValidationRules implements ValidationRules {
  const factory _ValidationRules({final bool numberOnly}) =
      _$ValidationRulesImpl;

  factory _ValidationRules.fromJson(Map<String, dynamic> json) =
      _$ValidationRulesImpl.fromJson;

  @override
  bool get numberOnly;

  /// Create a copy of ValidationRules
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidationRulesImplCopyWith<_$ValidationRulesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

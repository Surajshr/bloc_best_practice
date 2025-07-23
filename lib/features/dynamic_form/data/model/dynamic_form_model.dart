import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_form_model.g.dart';
part 'dynamic_form_model.freezed.dart';

@freezed
class DynamicFormModel with _$DynamicFormModel {
  const factory DynamicFormModel({
    required FormData form,
  }) = _DynamicFormModel;

  factory DynamicFormModel.fromJson(Map<String, dynamic> json) =>
      _$DynamicFormModelFromJson(json);
}

@freezed
class FormData with _$FormData {
  const factory FormData({
    required String title,
    required List<FormStep> steps,
  }) = _FormData;

  factory FormData.fromJson(Map<String, dynamic> json) =>
      _$FormDataFromJson(json);
}

@freezed
class FormStep with _$FormStep {
  const factory FormStep({
    required String title,
    required String description,
    required List<FormInput> inputs,
  }) = _FormStep;

  factory FormStep.fromJson(Map<String, dynamic> json) =>
      _$FormStepFromJson(json);
}

@freezed
class FormInput with _$FormInput {
  const factory FormInput({
    required String key,
    required String type,
    required String label,
    required bool required,
    @Default(null) dynamic defaultValue,
    ValidationRules? validation,
    List<String>? options,
  }) = _FormInput;

  factory FormInput.fromJson(Map<String, dynamic> json) =>
      _$FormInputFromJson(json);
}

@freezed
class ValidationRules with _$ValidationRules {
  const factory ValidationRules({
    @Default(false) bool numberOnly,
  }) = _ValidationRules;

  factory ValidationRules.fromJson(Map<String, dynamic> json) =>
      _$ValidationRulesFromJson(json);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_form_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DynamicFormModelImpl _$$DynamicFormModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DynamicFormModelImpl(
      form: FormData.fromJson(json['form'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DynamicFormModelImplToJson(
        _$DynamicFormModelImpl instance) =>
    <String, dynamic>{
      'form': instance.form,
    };

_$FormDataImpl _$$FormDataImplFromJson(Map<String, dynamic> json) =>
    _$FormDataImpl(
      title: json['title'] as String,
      steps: (json['steps'] as List<dynamic>)
          .map((e) => FormStep.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FormDataImplToJson(_$FormDataImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'steps': instance.steps,
    };

_$FormStepImpl _$$FormStepImplFromJson(Map<String, dynamic> json) =>
    _$FormStepImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      inputs: (json['inputs'] as List<dynamic>)
          .map((e) => FormInput.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FormStepImplToJson(_$FormStepImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'inputs': instance.inputs,
    };

_$FormInputImpl _$$FormInputImplFromJson(Map<String, dynamic> json) =>
    _$FormInputImpl(
      key: json['key'] as String,
      type: json['type'] as String,
      label: json['label'] as String,
      required: json['required'] as bool,
      defaultValue: json['defaultValue'] ?? null,
      validation: json['validation'] == null
          ? null
          : ValidationRules.fromJson(
              json['validation'] as Map<String, dynamic>),
      options:
          (json['options'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$FormInputImplToJson(_$FormInputImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'type': instance.type,
      'label': instance.label,
      'required': instance.required,
      'defaultValue': instance.defaultValue,
      'validation': instance.validation,
      'options': instance.options,
    };

_$ValidationRulesImpl _$$ValidationRulesImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidationRulesImpl(
      numberOnly: json['numberOnly'] as bool? ?? false,
    );

Map<String, dynamic> _$$ValidationRulesImplToJson(
        _$ValidationRulesImpl instance) =>
    <String, dynamic>{
      'numberOnly': instance.numberOnly,
    };

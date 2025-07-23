// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_submission_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FormSubmissionModelImpl _$$FormSubmissionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FormSubmissionModelImpl(
      formData: FormData.fromJson(json['formData'] as Map<String, dynamic>),
      formValues:
          FormValuesModel.fromJson(json['formValues'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FormSubmissionModelImplToJson(
        _$FormSubmissionModelImpl instance) =>
    <String, dynamic>{
      'formData': instance.formData,
      'formValues': instance.formValues,
    };

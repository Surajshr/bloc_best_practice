import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:varosha_app/features/dynamic_form/data/model/dynamic_form_model.dart';
import 'package:varosha_app/features/dynamic_form/data/model/form_values_model.dart';

part 'form_submission_model.freezed.dart';
part 'form_submission_model.g.dart';

@freezed
class FormSubmissionModel with _$FormSubmissionModel {
  const factory FormSubmissionModel({
    required FormData formData,
    required FormValuesModel formValues,
  }) = _FormSubmissionModel;

  factory FormSubmissionModel.fromJson(Map<String, dynamic> json) =>
      _$FormSubmissionModelFromJson(json);
}

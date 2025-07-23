import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_values_model.freezed.dart';
part 'form_values_model.g.dart';

@freezed
class FormValuesModel with _$FormValuesModel {
  const factory FormValuesModel({
    String? fullName,
    int? age,
    String? gender,
    String? vehicleType,
    int? vehicleYear,
    @Default(false) bool hasExistingInsurance,
    String? coverageType,
    @Default(false) bool roadsideAssistance,
  }) = _FormValuesModel;

  factory FormValuesModel.fromJson(Map<String, dynamic> json) =>
      _$FormValuesModelFromJson(json);

  const FormValuesModel._();

  Map<String, dynamic> toMap() {
    return {
      'fullName': fullName,
      'age': age,
      'gender': gender,
      'vehicleType': vehicleType,
      'vehicleYear': vehicleYear,
      'hasExistingInsurance': hasExistingInsurance,
      'coverageType': coverageType,
      'roadsideAssistance': roadsideAssistance,
    };
  }

  static FormValuesModel fromMap(Map<String, dynamic> map) {
    return FormValuesModel(
      fullName: map['fullName'] as String?,
      age: int.tryParse(map['age']?.toString() ?? ''),
      gender: map['gender'] as String?,
      vehicleType: map['vehicleType'] as String?,
      vehicleYear: int.tryParse(map['vehicleYear']?.toString() ?? ''),
      hasExistingInsurance: map['hasExistingInsurance'] as bool? ?? false,
      coverageType: map['coverageType'] as String?,
      roadsideAssistance: map['roadsideAssistance'] as bool? ?? false,
    );
  }
}

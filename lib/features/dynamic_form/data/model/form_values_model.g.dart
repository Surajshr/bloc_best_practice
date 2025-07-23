// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_values_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FormValuesModelImpl _$$FormValuesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FormValuesModelImpl(
      fullName: json['fullName'] as String?,
      age: (json['age'] as num?)?.toInt(),
      gender: json['gender'] as String?,
      vehicleType: json['vehicleType'] as String?,
      vehicleYear: (json['vehicleYear'] as num?)?.toInt(),
      hasExistingInsurance: json['hasExistingInsurance'] as bool? ?? false,
      coverageType: json['coverageType'] as String?,
      roadsideAssistance: json['roadsideAssistance'] as bool? ?? false,
    );

Map<String, dynamic> _$$FormValuesModelImplToJson(
        _$FormValuesModelImpl instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'age': instance.age,
      'gender': instance.gender,
      'vehicleType': instance.vehicleType,
      'vehicleYear': instance.vehicleYear,
      'hasExistingInsurance': instance.hasExistingInsurance,
      'coverageType': instance.coverageType,
      'roadsideAssistance': instance.roadsideAssistance,
    };

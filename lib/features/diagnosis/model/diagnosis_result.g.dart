// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diagnosis_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiagnosisResultImpl _$$DiagnosisResultImplFromJson(
  Map<String, dynamic> json,
) => _$DiagnosisResultImpl(
  name: json['name'] as String,
  result: json['result'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$$DiagnosisResultImplToJson(
  _$DiagnosisResultImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'result': instance.result,
  'createdAt': instance.createdAt.toIso8601String(),
};

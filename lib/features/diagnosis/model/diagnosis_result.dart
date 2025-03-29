import 'package:freezed_annotation/freezed_annotation.dart';

part 'diagnosis_result.freezed.dart';
part 'diagnosis_result.g.dart';

@freezed
class DiagnosisResult with _$DiagnosisResult {
  const factory DiagnosisResult({
    required String name, // 診断した名前
    required String result, // 前世のジョーク診断結果
    required DateTime createdAt, // 診断日時
  }) = _DiagnosisResult;

  factory DiagnosisResult.fromJson(Map<String, dynamic> json) =>
      _$DiagnosisResultFromJson(json);
}

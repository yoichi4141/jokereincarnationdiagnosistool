import 'dart:math';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:joke_diagnosis_app/features/diagnosis/model/diagnosis_result.dart';
import '../model/diagnosis_result.dart';

final diagnosisProvider =
    AsyncNotifierProvider<DiagnosisNotifier, DiagnosisResult>(
      DiagnosisNotifier.new,
    );

class DiagnosisNotifier extends AsyncNotifier<DiagnosisResult> {
  final _jokes = [
    "あなたの前世はジャガイモです。",
    "江戸時代の落語家でした。",
    "ピラミッドの石を1個だけ運んだ人です。",
    "未来から来たネコ型AIでした。",
    "あなたはインド人の王でした名前はクマール",
  ];

  @override
  Future<DiagnosisResult> build() async {
    await Future.delayed(const Duration(seconds: 2)); // 擬似API待ち時間
    final name = ref.read(userNameProvider);
    final joke = _jokes[Random().nextInt(_jokes.length)];
    return DiagnosisResult(name: name, result: joke, createdAt: DateTime.now());
  }
}

// 名前を保持するProvider（StateNotifier）
final userNameProvider = StateProvider<String>((ref) => "");

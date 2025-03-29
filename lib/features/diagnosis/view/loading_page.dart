import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../provider/diagnosis_provider.dart';

class LoadingPage extends ConsumerWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(diagnosisProvider, (previous, next) {
      next.whenData((_) {
        context.go('/result');
      });
    });

    // 初回のみ診断開始
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(diagnosisProvider.notifier).build();
    });

    return Scaffold(
      body: Center(
        child:
            const Text('診断中…🧠')
                .animate()
                .fadeIn(duration: 500.ms)
                .scale(duration: 800.ms)
                .then(delay: 300.ms)
                .shake(),
      ),
    );
  }
}

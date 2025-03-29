import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../provider/diagnosis_provider.dart';
import 'package:intl/intl.dart';

class ResultPage extends ConsumerWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final result = ref.watch(diagnosisProvider).value;

    if (result == null) {
      return const Scaffold(body: Center(child: Text('診断結果がありません')));
    }

    final formattedDate = DateFormat(
      'yyyy年MM月dd日 HH:mm',
    ).format(result.createdAt);

    return Scaffold(
      appBar: AppBar(title: const Text('診断結果')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('名前：${result.name}', style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 16),
            Text('前世：${result.result}', style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 16),
            Text('診断日：$formattedDate'),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () => context.go('/'),
              child: const Text('もう一度診断する'),
            ),
          ],
        ),
      ),
    );
  }
}

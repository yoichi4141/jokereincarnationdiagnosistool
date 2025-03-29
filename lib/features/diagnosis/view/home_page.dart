import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../provider/diagnosis_provider.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameController = useTextEditingController();
    final isValid = useState(false);

    useEffect(() {
      nameController.addListener(() {
        isValid.value = nameController.text.trim().isNotEmpty;
      });
      return null;
    }, [nameController]);

    return Scaffold(
      appBar: AppBar(title: const Text('ジョーク診断メーカー')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('あなたの名前を入力してください'),
            const SizedBox(height: 16),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: '例：たろう',
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed:
                  isValid.value
                      ? () {
                        ref.read(userNameProvider.notifier).state =
                            nameController.text.trim();
                        context.push('/loading');
                      }
                      : null,
              child: const Text('診断スタート'),
            ),
          ],
        ),
      ),
    );
  }
}

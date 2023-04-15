import 'package:biwa_musume_app/providers/question_notifier.dart';
import 'package:biwa_musume_app/views/result_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class QuestionPage extends ConsumerWidget {
  const QuestionPage({Key? key}) : super(key: key);

  void _transitionToNextPage(
    BuildContext context,
    WidgetRef ref, {
    required bool isRightSelection,
  }) {
    final questionState = ref.read(questionProvider);
    final questionNotifier = ref.read(questionProvider.notifier);
    questionNotifier.updateResultIndex(isRightSelection);
    if (questionState.questionIndex < 4) {
      questionNotifier.increaseQuestionIndex();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const QuestionPage(),
        ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ResultPage(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Q${ref.read(questionProvider).questionIndex + 1}',
              style: const TextStyle(
                fontSize: 24.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _transitionToNextPage(context, ref,
                        isRightSelection: false);
                  },
                  child: const Text('left'),
                ),
                const SizedBox(width: 16.0),
                ElevatedButton(
                  onPressed: () {
                    _transitionToNextPage(context, ref, isRightSelection: true);
                  },
                  child: const Text('right'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

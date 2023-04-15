import 'package:biwa_musume_app/providers/question_notifier.dart';
import 'package:biwa_musume_app/views/result_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SelectionPage extends ConsumerWidget {
  const SelectionPage({Key? key}) : super(key: key);

  void _transitionToNextPage(BuildContext context, WidgetRef ref) {
    final questionState = ref.read(questionProvider);
    final questionNotifier = ref.read(questionProvider.notifier);
    if (questionState.questionIndex < 4) {
      questionNotifier.increaseQuestionIndex();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SelectionPage(),
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
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  _transitionToNextPage(context, ref);
                },
                child: const Text('no'),
              ),
              const SizedBox(width: 16.0),
              ElevatedButton(
                onPressed: () {
                  _transitionToNextPage(context, ref);
                },
                child: const Text('yes'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

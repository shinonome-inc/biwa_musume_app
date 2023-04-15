import 'package:biwa_musume_app/providers/diagnostic_notifier.dart';
import 'package:biwa_musume_app/ui_components/diagnostic_button.dart';
import 'package:biwa_musume_app/views/result_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DiagnosticPage extends ConsumerWidget {
  final String question;
  final String leftText;
  final String rightText;
  const DiagnosticPage({
    super.key,
    required this.question,
    required this.leftText,
    required this.rightText,
  });

  void _transitionToNextPage(
    BuildContext context,
    WidgetRef ref, {
    required bool isRightSelection,
  }) {
    final diagnosticState = ref.read(diagnosticProvider);
    final diagnosticNotifier = ref.read(diagnosticProvider.notifier);
    diagnosticNotifier.updateResultIndex(isRightSelection);
    if (diagnosticState.questionIndex < 4) {
      diagnosticNotifier.increaseDiagnosisIndex();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DiagnosticPage(
            question: 'Q${diagnosticState.questionIndex + 1}',
            leftText: 'Left',
            rightText: 'Right',
          ),
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
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/diagnostic_page_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 24),
                  Text(
                    question,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DiagnosticButton(
                        text: leftText,
                        onPressed: () => _transitionToNextPage(
                          context,
                          ref,
                          isRightSelection: false,
                        ),
                      ),
                      const SizedBox(width: 24),
                      DiagnosticButton(
                        text: rightText,
                        onPressed: () => _transitionToNextPage(
                          context,
                          ref,
                          isRightSelection: true,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

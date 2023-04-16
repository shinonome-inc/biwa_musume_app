import 'package:biwa_musume_app/constants/biwamusume_data.dart';
import 'package:biwa_musume_app/models/biwamusume.dart';
import 'package:biwa_musume_app/providers/diagnostic_notifier.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ResultPage extends ConsumerWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final diagnosticState = ref.read(diagnosticProvider);
    final biwamusume =
        BiwamusumeData().biwamusumeList[diagnosticState.resultIndex];
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              biwamusume.name,
            ),
            Image.asset(biwamusume.imagePath),
          ],
        ),
      ),
    );
  }
}

import 'package:biwa_musume_app/providers/diagnostic_notifier.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ResultPage extends ConsumerWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Text('resultIndex: ${ref.read(diagnosticProvider).resultIndex}'),
      ),
    );
  }
}

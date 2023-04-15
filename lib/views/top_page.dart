import 'package:biwa_musume_app/views/diagnostic_page.dart';
import 'package:flutter/material.dart';

class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DiagnosticPage(
                  question: 'Q1',
                  leftText: 'Left',
                  rightText: 'Right',
                ),
              ),
            );
          },
          child: const Text('診断スタート'),
        ),
      ),
    );
  }
}

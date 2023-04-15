import 'package:flutter/material.dart';
import 'diagnostic_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(
          child: DiagnosticPage(
              question: "性格は？",
              leftText: "活発",
              rightText: "穏やか",
              leftOnPressed: (() => {}),
              rightOnPressed: (() => {}))),
    );
  }
}

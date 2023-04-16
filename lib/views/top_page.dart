import 'package:biwa_musume_app/views/diagnostic_page.dart';
import 'package:flutter/material.dart';

import '../gradient-button.dart';
import '../ui_components/diagnostic_button.dart';

class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            // 画像がはみ出るが、縦横比を保ったまま画面いっぱいに画像を表示
            fit: BoxFit.cover,
            image: AssetImage('assets/top_bg.png'),
          ),
        ),
        child: Container(
          margin: EdgeInsets.only(bottom: 56.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset('assets/logo.png'),
              Text("全5問", style: TextStyle(fontSize: 20)),
              SizedBox(height: 4.0),
              GradientButton(
                buttonText: '',
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
              ),
              SizedBox(height: 20.0),
              DiagnosticButton(
                text: ("ビワ娘とは"),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}

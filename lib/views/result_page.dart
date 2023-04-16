import 'package:biwa_musume_app/constants/biwamusume_data.dart';
import 'package:biwa_musume_app/providers/diagnostic_notifier.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../ui_components/result_page_list.dart';

class ResultPage extends ConsumerWidget {
  final String imagePath;
  final String everydayLife;
  final String character;
  final String rhythmOfDailyLife;
  final String food;
  final String breedingSeason;
  final String bodyLength;
  final String origin;
  final String bodyColor;
  final String residence;
  final String habitatDepth;
  final VoidCallback onPressed;
  const ResultPage({
    Key? key,
    required this.imagePath,
    required this.everydayLife,
    required this.character,
    required this.rhythmOfDailyLife,
    required this.food,
    required this.breedingSeason,
    required this.bodyLength,
    required this.origin,
    required this.bodyColor,
    required this.residence,
    required this.habitatDepth,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final diagnosticState = ref.read(diagnosticProvider);
    final biwamusume =
        BiwamusumeData.biwamusumeList[diagnosticState.resultIndex];
    return Scaffold(
      body: ListView(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/result_page_above-bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 28),
                    Column(children: [
                      const Text(
                        'あなたにおすすめは・・・',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '「${biwamusume.name}」',
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          const Text(
                            'ちゃんです！',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ]),
                    const SizedBox(height: 28),
                  ],
                ),
              ),
            ],
          ),
        ),
        Image(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/result_page_under-bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(children: [
            Column(children: [
              const SizedBox(height: 20),
              ResultPageList(
                everydayLife: everydayLife,
                character: character,
                rhythmOfDailyLife: rhythmOfDailyLife,
                food: food,
                breedingSeason: breedingSeason,
                bodyLength: bodyLength,
                origin: origin,
                bodyColor: bodyColor,
                residence: residence,
                habitatDepth: habitatDepth,
              ),
            ]),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                fixedSize: Size(350, 55),
                backgroundColor: const Color(0xFFE1F0FF),
                foregroundColor: const Color(0xFF007BFF),
                textStyle:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 3,
                shadowColor: const Color(0xff00004D),
              ),
              child: const Center(
                child: Text("もう一度"),
              ),
            ),
            const SizedBox(
              height: 48,
            )
          ]),
        ),
      ]),
    );
  }
}

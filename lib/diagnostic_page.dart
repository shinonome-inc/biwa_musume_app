import 'package:flutter/material.dart';

class DiagnosticPage extends StatelessWidget {
  final String question;
  final String leftText;
  final String rightText;
  final VoidCallback leftOnPressed;
  final VoidCallback rightOnPressed;
  const DiagnosticPage({
    super.key,
    required this.question,
    required this.leftText,
    required this.rightText,
    required this.leftOnPressed,
    required this.rightOnPressed,
  });
  @override
  Widget build(BuildContext context) {
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
                      ElevatedButton(
                        onPressed: leftOnPressed,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFE1F0FF),
                          foregroundColor: const Color(0xFF007BFF),
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 32),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          elevation: 3,
                          shadowColor: const Color(0xff00004D),
                        ),
                        child: Text(leftText),
                      ),
                      const SizedBox(width: 24),
                      ElevatedButton(
                        onPressed: rightOnPressed,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFE1F0FF),
                          foregroundColor: const Color(0xFF007BFF),
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 32),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          elevation: 3,
                          shadowColor: const Color(0xff00004D),
                        ),
                        child: Text(rightText),
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

import 'package:flutter/material.dart';

class DiagnosticButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const DiagnosticButton({
    super.key,
    required this.text,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFE1F0FF),
        foregroundColor: const Color(0xFF007BFF),
        textStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 3,
        shadowColor: const Color(0xff00004D),
      ),
      child: Text(text),
    );
  }
}

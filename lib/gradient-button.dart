import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final String buttonText;
  final Function onPressed;

  GradientButton({required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xff3882d2),
            Color(0xff0bbff6),
          ],
        ),
        borderRadius: BorderRadius.circular(44),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.3),
            offset: Offset(0, 6),
            blurRadius: 10,
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          '診断スタート',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 36),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(44),
          ),
          primary: Colors.transparent,
          onPrimary: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
      ),
    );
  }
}

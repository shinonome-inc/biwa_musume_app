import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final String buttonText;
  final Function onPressed;

  GradientButton({required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Color(0xffE1F0FF)),
        elevation: MaterialStateProperty.all<double>(6),
        shadowColor:
            MaterialStateProperty.all<Color>(Color.fromRGBO(0, 0, 0, 0.3)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(44.0),
            side: BorderSide(
              color: Colors.transparent,
              width: 1.0,
            ),
          ),
        ),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(44.0),
          gradient: LinearGradient(
            colors: [Color(0xff3882D2), Color(0xff0BBFF6)],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
          border: Border.all(
            color: Color(0xff3882D2),
            width: 1.0,
          ),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..shader = LinearGradient(
                colors: [Color(0xff3882D2), Color(0xff0BBFF6)],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ).createShader(Rect.fromLTWH(0, 0, 100, 100)),
          ),
        ),
      ),
    );
  }
}

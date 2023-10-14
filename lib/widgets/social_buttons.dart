import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialButton extends StatelessWidget {
  final String buttonText;
  final String imagePath;
  final Color textColor;
  final Color buttonColor;
  final VoidCallback onPressed;
  SocialButton({
    required this.buttonText,
    required this.imagePath,
    required this.textColor,
    required this.buttonColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 2,
        padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 25,
        ),
      ),
      child: Row(
        children: [
          Image.asset(imagePath,
          width: 24,
          height: 24,),
          SizedBox(width: 8),
          Text(
            buttonText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13,
              color: Colors.black,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.65,
              fontFamily: 'Lato'
            ),
          ),
        ],
      ),
    );
  }
}

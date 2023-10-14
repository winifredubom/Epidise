import 'package:flutter/cupertino.dart';

class home_bottomText extends StatelessWidget {
  const home_bottomText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('By continuing you agree to our',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              fontFamily: 'Lato',
              color: Color(0xff6A6A6B)
          ),),
        Text('Terms of services and Privacy policy',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: "Lato",
                fontSize: 12,
                color: Color(0xff6A6A6B),
                decoration: TextDecoration.underline)),
      ],
    );
  }
}
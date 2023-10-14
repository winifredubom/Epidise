import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles/styles.dart';

class signup_button extends StatelessWidget {
  const signup_button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.fromLTRB(17, 0, 16, 20),
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            fixedSize: MaterialStateProperty.all( Size(380, 56)),
            side: MaterialStateProperty.all(BorderSide(color: StylesPlus.bgColor, width: 2)),
            backgroundColor: MaterialStateProperty.all(Colors.white),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))
        ),
         child: const  Text('SIGN UP',
          style: TextStyle(
              fontFamily: 'Lato',
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: StylesPlus.bgColor
          ),),
      ),
    );
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles/styles.dart';

class login_button extends StatelessWidget {
  const login_button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(17, 0, 16, 23),
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            fixedSize: MaterialStateProperty.all( Size(380, 56)),
            backgroundColor: MaterialStateProperty.all(StylesPlus.bgColor),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))
        ),
        child:  const Text('LOGIN',
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'Lato',
              color: Colors.white,
              letterSpacing: 1.25,
              fontWeight: FontWeight.w700
          ),),
      ),
    );
  }
}


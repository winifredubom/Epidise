import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_2/screens/load_2.dart';
import 'package:task_2/screens/login_screen/login_screen.dart';

import '../styles/styles.dart';

class login_button extends StatefulWidget {
  const login_button({
    super.key,
  });

  @override
  _login_buttonState createState() => _login_buttonState();
}


class _login_buttonState extends State<login_button> {
  final bool _isLogin = false;
  bool _loading = false;
  final _formKey = GlobalKey<FormState>();



@override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(17, 0, 16, 23),
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                ParallaxScroll(),
          ),
        );
      },
      style: ButtonStyle(
          fixedSize: MaterialStateProperty.all(Size(380, 56)),
          backgroundColor: MaterialStateProperty.all(StylesPlus.bgColor),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))
      ),
      child: _loading? const SizedBox(
        height: 20, width: 20,
        child: CircularProgressIndicator(
          color: Colors.white,
          strokeWidth: 2.0,
        ),
      ):  Text( _isLogin ?  'LOGIN': 'LOGIN',
        style: TextStyle(
            fontSize: 18,
            fontFamily: 'Lato',
            color: Colors.white,
            letterSpacing: 1.25,
            fontWeight: FontWeight.w700
        ),),
    ),
  );
}}



class login_button2 extends StatefulWidget {
  const login_button2({
    super.key,
  });

  @override
  _login_button2State createState() => _login_button2State();
}


class _login_button2State extends State<login_button2> {
  final bool _isLogin = false;
  bool _loading = false;
  final _formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(17, 0, 16, 23),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  Load_2(), // Replace 'AnotherScreen' with your target screen
            ),
          );
        },
        style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(Size(380, 56)),
            backgroundColor: MaterialStateProperty.all(StylesPlus.bgColor),
            shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))
        ),
        child: _loading? const SizedBox(
          height: 20, width: 20,
          child: CircularProgressIndicator(
            color: Colors.white,
            strokeWidth: 2.0,
          ),
        ):  Text( _isLogin ?  'LOGIN': 'LOGIN',
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'Lato',
              color: Colors.white,
              letterSpacing: 1.25,
              fontWeight: FontWeight.w700
          ),),
      ),
    );
  }}



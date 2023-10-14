import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:task_2/screens/splash_screen/load_quote.dart';
import 'package:task_2/screens/splash_screen/loading.dart';
import 'package:task_2/styles/styles.dart';
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  AnimatedSplashScreen(
      splash:
      Column(
        children: [ 
          Expanded(
            child: Image.asset('lib/assets/image 1.png',
            width: 200,height: 200,),
          ),
          const Text(
            'Your skin\'s best friend',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Plus Jakarta Sans',
              fontWeight: FontWeight.w400,
              height: 1.0,
              letterSpacing: 0.08,
            ),
          ),
        ],
      ),
      splashIconSize: 300,
      backgroundColor: StylesPlus.bgColor,
          duration: 3000,
          nextScreen: Loading(),
          splashTransition: SplashTransition.fadeTransition,
    );
  }
}

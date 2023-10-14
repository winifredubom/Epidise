import 'package:flutter/material.dart';
import 'package:task_2/screens/login_screen/login_screen.dart';
import 'package:task_2/screens/login_screen/main_login.dart';
import 'package:task_2/screens/onBoarding/onBoarding_screen.dart';
import 'package:task_2/screens/splash_screen/load_quote.dart';
import 'package:task_2/screens/splash_screen/loading.dart';
import 'package:task_2/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SplashScreen(),
    );
  }
}

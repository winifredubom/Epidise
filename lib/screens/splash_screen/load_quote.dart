import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_2/screens/onBoarding/onBoarding_screen.dart';
import 'package:task_2/styles/styles.dart';
import 'package:task_2/widgets/bottom_positioned.dart';
import 'package:task_2/widgets/top_positioned.dart';

import '../../widgets/load_quote_text.dart';

class Load_Quote extends StatefulWidget {
  @override
  _Load_QuoteState createState() => _Load_QuoteState();
}

class _Load_QuoteState extends State<Load_Quote> {
  @override
  void initState() {
    super.initState();
    // Introduce a 2-second delay before navigating to the next screen
    Future.delayed(Duration(seconds: 8), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => onBoarding_screen()),
      );
    });
  }

  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: StylesPlus.bgColor,
      body: Stack(
            children:[
             Top_positioned(),
              load_quote_texts(),
              Bottom_positioned()
            ]
          )
    );
  }
}



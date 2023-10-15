import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_2/styles/styles.dart';
import 'package:lottie/lottie.dart';

class DoneScreen extends StatefulWidget {
  const DoneScreen({super.key});

  @override
  State<DoneScreen> createState() => _DoneScreenState();
}

class _DoneScreenState extends State<DoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StylesPlus.main_bg,
      body: Center(
        child: Align(
          alignment: Alignment.center,
          child: Container(
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                Expanded(
                  child: Lottie.asset(
                  'lib/assets/data.json', // Adjust height as needed
                  fit: BoxFit.contain, // Adjust
                  repeat: true, // Set to true if you want the animation to loop
              ),
                ),
                  Text(
                    'You are all set up',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Plus Jakarta Sans'
                    ),
                  )
              ],
              ),
          ),
        ),
      ),
    );
  }
}

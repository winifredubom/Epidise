import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_2/styles/styles.dart';
import 'package:task_2/widgets/animated_percent_indicator.dart';

class Load_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StylesPlus.main_bg,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 299),
            Container(
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Loading...',
                    style: TextStyle(
                      color: StylesPlus.bgColor,
                      fontSize: 20,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w600,
                      height: 0,
                      letterSpacing: -0.20,
                    ),
                  ),
                  const SizedBox(height: 28),
                  AnimatedLinearProgressBar(),
                  const SizedBox(height: 28),
                  Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(width: 8),
                        Text(
                          'LET\'S SET YOU UP',
                          style: TextStyle(
                            color: Color(0xFF328B8C),
                            fontSize: 12,
                            fontFamily: 'Plus Jakarta Sans',
                            fontWeight: FontWeight.w800,
                            height: 0,
                            letterSpacing: 1.20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
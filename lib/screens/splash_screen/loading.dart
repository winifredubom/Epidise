import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_2/styles/styles.dart';
import 'package:task_2/widgets/animated_percent_indicator.dart';

class Loading extends StatelessWidget {
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
                              Container(
                                width: 24,
                                height: 24,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 6,
                                      top: 3,
                                      child: Container(
                                        width: 12,
                                        height: 18,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              width: 2,
                                              strokeAlign: BorderSide.strokeAlignCenter,
                                              color: Color(0xFF328B8C),
                                            ),
                                            borderRadius: BorderRadius.circular(3),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 8),
                              Text(
                                'SHAKE THE SCREEN TO INTERACT!',
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
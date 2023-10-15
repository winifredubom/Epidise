import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_2/screens/quiz.dart';
import 'package:task_2/screens/splash_screen/load_quote.dart';
import 'package:task_2/styles/styles.dart';

class AnimatedLinearProgressBar extends StatefulWidget {
  @override
  _AnimatedLinearProgressBarState createState() =>
      _AnimatedLinearProgressBarState();
}

class _AnimatedLinearProgressBarState
    extends State<AnimatedLinearProgressBar> with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    // Create an animation controller
    _controller = AnimationController(
      duration: const Duration(seconds: 3), // Adjust the duration as needed
      vsync: this,
    );

    // Start the animation
    _controller.forward().whenComplete(() {
      // Navigate to a new screen when the animation is complete
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Load_Quote(), // Replace 'NextScreen' with your screen
        ),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Padding(
          padding: const EdgeInsets.all(22.0),
          child: LinearProgressIndicator(
            value: _controller.value,
            backgroundColor: Colors.white,
            minHeight: 10,
            valueColor: const AlwaysStoppedAnimation<Color>(StylesPlus.bgColor),
          ),
        );
      },
    );
  }
}



class AnimatedLinearProgressBar2 extends StatefulWidget {
  @override
  _AnimatedLinearProgressBar2State createState() =>
      _AnimatedLinearProgressBar2State();
}

class _AnimatedLinearProgressBar2State
    extends State<AnimatedLinearProgressBar2> with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    // Create an animation controller
    _controller = AnimationController(
      duration: const Duration(seconds: 3), // Adjust the duration as needed
      vsync: this,
    );

    // Start the animation
    _controller.forward().whenComplete(() {
      // Navigate to a new screen when the animation is complete
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Quiz_screen(), // Replace 'NextScreen' with your screen
        ),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Padding(
          padding: const EdgeInsets.all(22.0),
          child: LinearProgressIndicator(
            value: _controller.value,
            backgroundColor: Colors.white,
            minHeight: 10,
            valueColor: const AlwaysStoppedAnimation<Color>(StylesPlus.bgColor),
          ),
        );
      },
    );
  }
}
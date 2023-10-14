import 'package:flutter/cupertino.dart';

import '../styles/styles.dart';

class CircularImageWithBackground extends StatelessWidget {
  final String image;

  CircularImageWithBackground({
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 298 + 0,
      height: 299 + 60,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: StylesPlus.bgColor,
      ),
      child: Center(
        child: ClipRRect(
          child: Image.asset(
            image,
            fit: BoxFit.cover,
            width: 299 + 30, // Set the width to match the container's width
            height: 250, // Set the height to match the container's height
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Bottom_positioned extends StatelessWidget {
  const Bottom_positioned({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: -50,
          child: Transform.rotate(
            angle: 1.6,
            child: SvgPicture.asset('lib/assets/Vector.svg', width: 30, height: 70,),
          ),
        ),
        Positioned(
          bottom: 7,
          left: 60,
          child: Transform.rotate(
            angle: 4.7,
            child: SvgPicture.asset('lib/assets/Vector.svg', width: 30, height: 70,),
          ),
        ),
        Positioned(
          bottom: 150,
          left: 60,
          child: Transform.rotate(
            angle: 3.15,
            child: SvgPicture.asset('lib/assets/Vector.svg', width: 30, height: 70,),
          ),
        ),
        Positioned(
          bottom: 90,
          left: 110,
          child: Transform.rotate(
            angle: 6.25,
            child: SvgPicture.asset('lib/assets/Vector.svg', width: 30, height: 70,),
          ),
        ),
        Positioned(
          bottom: 230,
          left: -20,
          child: Transform.rotate(
            angle: 1.6,
            child: SvgPicture.asset('lib/assets/Vector.svg', width: 30, height: 70,),
          ),
        )
      ],
    );
  }
}

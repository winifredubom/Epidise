import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Top_positioned extends StatelessWidget {
  const Top_positioned({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 120,
          top: -20,
          child: Transform.rotate(
            angle: 1.6,
            child: SvgPicture.asset('lib/assets/Vector.svg', width: 20, height: 70,),
          ),
        ),
        Positioned(
          left: 230,
          top: -20,
          child: Transform.rotate(
            angle: 1.6,
            child: SvgPicture.asset('lib/assets/Vector.svg', width: 20, height: 70,),
          ),
        ),
        Positioned(
          left: 340,
          top: -20,
          child: Transform.rotate(
            angle: 1.6,
            child: SvgPicture.asset('lib/assets/Vector.svg', width: 20, height: 70,),
          ),
        ),
        Positioned(
          left: 175,
          top: 55,
          child: Transform.rotate(
            angle: 9.4,
            child: SvgPicture.asset('lib/assets/Vector.svg', width: 20, height: 70,),
          ),
        ),
        Positioned(
          left: 280,
          top: 55,
          child: Transform.rotate(
            angle: 9.4,
            child: SvgPicture.asset('lib/assets/Vector.svg', width: 20, height: 70,),
          ),
        ),
        Positioned(
          left: 330,
          top: 125,
          child: Transform.rotate(
            angle: 6.3,
            child: SvgPicture.asset('lib/assets/Vector.svg', width: 30, height: 70,),
          ),
        ),
        Positioned(
          left: 395,
          top: 195,
          child: Transform.rotate(
            angle: 4.7,
            child: SvgPicture.asset('lib/assets/Vector.svg', width: 30, height: 70,),
          ),
        ),
        Positioned(
          left: 335,
          top: 245,
          child: Transform.rotate(
            angle: 1.6,
            child: SvgPicture.asset('lib/assets/Vector.svg', width: 30, height: 70,),
          ),
        ),
      ],
    );
  }
}

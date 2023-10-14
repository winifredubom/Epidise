
import 'package:flutter/cupertino.dart';

class home_or extends StatelessWidget {
  const home_or({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          color: const Color(0xffD6CACADB), // Background color
          width: 120,
          height: 1,
        ),
        const Text('Or',
          style: TextStyle(
            fontSize: 12,
              fontFamily: 'Lato',
              fontWeight: FontWeight.w400,
              color: Color(0xff757171)
          ),),
        Container(
          color: const Color(0xffD6CACADB), // Background color
          width: 120,
          height: 1,
        ),
      ],
    );
  }
}


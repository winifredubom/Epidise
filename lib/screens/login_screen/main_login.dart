import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_2/constants/image_strings.dart';
import 'package:task_2/styles/styles.dart';
import 'package:task_2/widgets/social_buttons.dart';

import '../../widgets/login_bottomtext.dart';
import '../../widgets/login_button.dart';
import '../../widgets/login_or.dart';
import '../../widgets/signup_button.dart';

class MainLogin extends StatelessWidget {
  const MainLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset(
              'lib/assets/login image.png',
              height: 250,
              width: 250,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(17, 0, 16, 0),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hello Dearie!',
                        style: TextStyle(fontSize: 28,
                            fontFamily: 'Plus Jakarta Sans',
                            fontWeight: FontWeight.w700,
                            color: Colors.black)),
                    SizedBox(height: 4,),
                    Text('Get ready to make yourself glow',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Lato,',
                            color: Colors.black)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 23),
            const Column(
              children: [
                signup_button(),
                login_button(),
              ],
            ),
            const home_or(),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
               SocialButton(buttonText: 'FACEBOOK',
                   imagePath: EImages.socialbutton1,
                   textColor: Colors.black,
                   buttonColor: Colors.white,
                   onPressed: (){}),
                SocialButton(buttonText: 'GOOGLE',
                    imagePath: EImages.socialbutton2,
                    textColor: Colors.black,
                    buttonColor: Colors.white,
                    onPressed: (){})
              ],
            ),
            const SizedBox(height: 20),
            const home_bottomText()
          ],
        ),
      ),
    );
  }
}


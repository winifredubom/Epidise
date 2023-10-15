import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_2/widgets/login_button.dart';
import 'package:task_2/widgets/login_or.dart';
import 'package:task_2/widgets/signup_button.dart';
import 'package:task_2/widgets/social_buttons.dart';

import '../../constants/image_strings.dart';
import '../../styles/styles.dart';
import '../../widgets/login_bottomtext.dart';
import '../../widgets/text_fields.dart';
import '../auth/auth.dart';

class ParallaxScroll extends StatefulWidget {
  const ParallaxScroll({Key? key}) : super(key: key);

  @override
  _ParallaxScrollState createState() => _ParallaxScrollState();
}

class _ParallaxScrollState extends State<ParallaxScroll> {
  double imageScale = 0.35; // Initial scale factor for the image
  bool _obscureText = true;
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final bool _isLogin = false;
  bool _loading = false;
  final _formKey = GlobalKey<FormState>();


  handleSubmit() async {
    if (!_formKey.currentState!.validate()) return;
    final email = _emailController.value.text;
    final password =_passwordController.value.text;

    setState(() {
      _loading = true;
    });

    if(_isLogin){
      await Auth().signInWithEmailandPassword(email, password);
    }else {
      await Auth().registerwithEmailandPassword(email, password);
    }

    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Color(0xffF5F5F5),
            expandedHeight: 217.0,
            floating: false,
            elevation: 0,
            pinned: true,
            centerTitle: true,
            stretchTriggerOffset: 150,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: [
                StretchMode.fadeTitle
              ],
              background: GestureDetector(
                onScaleUpdate: (details) {
                  // Handle zoom by updating the scale factor
                  setState(() {
                    imageScale = details.scale;
                  });
                },
                child: Transform.scale(
                  scale: imageScale,
                  child: Image.asset(
                    'lib/assets/login image.png',
                    fit: BoxFit.cover,
                    height: 217.0, // Adjust the initial height
                    width: double.infinity,
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                color: Color(0xffF5F5F5),
                child: const Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(17, 0, 16, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hello Dearie!',
                              style: TextStyle(
                                fontSize: 28,
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Please fill your login details carefully',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Lato',
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                color: Color(0xffF5F5F5),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: CustomTextField(),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20 , 10, 20, 10),
                      child: Form(
                        key: _formKey,
                        child: TextFormField(
                          controller: _passwordController,
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Password',
                            hintStyle: const TextStyle(color: StylesPlus.bgColor,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Lato',
                                fontSize: 16),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscureText ? Icons.visibility : Icons.visibility_off,
                                color: Color(0xffA095C1),
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(23, 0, 15, 0),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff432C81),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    login_button2(),
                  ],
                ),
              ),
              Container(
                color: Color(0xffF5F5F5),
                child: SizedBox(
                  child: home_or(),
                ),
              ),
              SizedBox(height: 28,),
              Container(
                color: Color(0xffF5F5F5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SocialButton(
                      buttonText: 'FACEBOOK',
                      imagePath: EImages.socialbutton1,
                      textColor: Colors.black,
                      buttonColor: Colors.white,
                      onPressed: () {},
                    ),
                    SocialButton(
                      buttonText: 'GOOGLE',
                      imagePath: EImages.socialbutton2,
                      textColor: Colors.black,
                      buttonColor: Colors.white,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(height: 28,),
              Container(
                color: Color(0xffF5F5F5),
                child: home_bottomText(),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

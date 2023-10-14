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

class ParallaxScroll extends StatefulWidget {
  const ParallaxScroll({Key? key}) : super(key: key);

  @override
  _ParallaxScrollState createState() => _ParallaxScrollState();
}

class _ParallaxScrollState extends State<ParallaxScroll> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _obscureText = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled){
        return[
          SliverAppBar(
            backgroundColor: Color(0xffF5F5F5),
            expandedHeight: 217.0,
            floating: false,
            elevation: 0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Center(
                child: Image.asset(
                  'lib/assets/login image.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ];
      },
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
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
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 27,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Color(0xffF5F5F5),
              child:  Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: CustomTextField(),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20 , 10, 20, 10),
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor:  Colors.white,
                          hintText: 'Password',
                          hintStyle: const TextStyle(color: StylesPlus.bgColor,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Lato',
                          fontSize: 16),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText ? Icons.visibility : Icons
                                  .visibility_off,
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
                            ),),
                      ),
                    ),
                    SizedBox(height: 10,),
                    login_button(),
                  ],
                ),
              ),
            ),
          SliverToBoxAdapter(
            child: Container(
              color: Color(0xffF5F5F5),
              child: SizedBox(
                  child: home_or()),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 28,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
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
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 28,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Color(0xffF5F5F5),
              child: home_bottomText(),
            ),
          ),
        ],
      )
    );
  }
}



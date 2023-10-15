import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task_2/constants/image_strings.dart';
import 'package:task_2/constants/text_strings.dart';
import 'package:task_2/screens/login_screen/login_screen.dart';
import 'package:task_2/screens/login_screen/main_login.dart';
import 'package:task_2/styles/styles.dart';
import 'package:task_2/widgets/onBoarding_circle.dart';

class onBoarding_screen extends StatefulWidget {
  const onBoarding_screen({Key? key}) : super(key: key);

  @override
  State<onBoarding_screen> createState() => _onBoarding_screenState();
}

class _onBoarding_screenState extends State<onBoarding_screen> {
  PageController? _pageController;
  double currentPage = 0.0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);

    _pageController?.addListener(() {
      setState(() {
        currentPage = _pageController?.page ?? 0.0;
      });
    });
  }

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          SkipAndIndicator(pageController: _pageController, currentPage: currentPage),
          SizedBox(height: 7),
          Expanded(
            child: PageView(
              onPageChanged: (int index) {
                setState(() {
                  currentPage = index.toDouble();
                });
              },
              children: const [
                onBoardingPage(
                  image: EImages.onBoardingImage1,
                  title: ETexts.onBoardingTitle1,
                  subtitle: ETexts.onBoardingsubtitle1,
                ),
                onBoardingPage(
                  image: EImages.onBoardingImage2,
                  title: ETexts.onBoardingTitle2,
                  subtitle: ETexts.onBoardingsubtitle2,
                ),
                onBoardingPage(
                  image: EImages.onBoardingImage3,
                  title: ETexts.onBoardingTitle3,
                  subtitle: ETexts.onBoardingsubtitle3,
                ),
              ],
            ),
          ),
          BottomButton(pageController: _pageController, currentPage: currentPage),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key? key,
    required PageController? pageController,
    required this.currentPage,
  }) : _pageController = pageController;

  final PageController? _pageController;
  final double currentPage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 317,
        height: 56,
        child: ElevatedButton(
          onPressed: () {
            if (currentPage == 2.0) {
              // Navigate to the 'next_screen' route when currentPage is 2.0
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainLogin()),
              );
            } else {
              _pageController?.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.ease,
              );
            }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: StylesPlus.bgColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          child: Text(currentPage == 2.0 ? "Get Started" : "Continue", style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            fontFamily: 'Lato',
            letterSpacing: 1.25,
          ),),
        ),
      ),
    );
  }
}

class SkipAndIndicator extends StatelessWidget {
  const SkipAndIndicator({
    Key? key,
    required PageController? pageController,
    required double currentPage,
  }) : _pageController = pageController, _currentPage = currentPage;

  final PageController? _pageController;
  final double _currentPage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 12, 21, 0),
      child:
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Expanded(
          child: LinearPercentIndicator(
          lineHeight: 10,
          width: 250,
          barRadius: Radius.circular(2),
          percent: (_currentPage + 1)/3 ,
          progressColor: Color(0xff585656),
          backgroundColor: Color(0xffDDDDDD),
      ),
        ),
          SizedBox(
            width: 50,
            height: 60,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Skip",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff585656),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class onBoardingPage extends StatelessWidget {
  const onBoardingPage({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(21, 0, 20, 20),
      child: Column(
          children: [
            CircularImageWithBackground(image: image),
            Text(title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  letterSpacing: 0.1,
                  fontFamily: 'Plus Jakarta Sans'
              ) ,),
            const SizedBox(height: 9,),
            Text(subtitle,
              textAlign: TextAlign.center,
              style:  const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  letterSpacing: 0.1,
                  fontFamily: 'Lato'
              ) ,)
          ]
      ),
    );
  }
}

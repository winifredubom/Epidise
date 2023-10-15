import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:task_2/screens/done.dart';
import 'package:task_2/screens/login_screen/login_screen.dart';
import 'package:task_2/styles/styles.dart';
import 'onBoarding/onBoarding_screen.dart';

class Quiz_screen extends StatefulWidget {
  const Quiz_screen({super.key});

  @override
  State<Quiz_screen> createState() => _Quiz_screenState();
}

class _Quiz_screenState extends State<Quiz_screen> {
  int currentStep = 0;
  List<String> selectedOptions = [];

  List<String> questions = [
    'How would you describe your skin type?',
    'What is your primary skin concern?',
    'How often do you cleanse your face?',
    'Do you use sunscreen daily?',
    'What is your age group?',
  ];

  List<List<String>> options = [
    ['DRY', 'OILY', 'SENSITIVE', 'COMBINATION', 'NOT SURE'],
    ['ACNE', 'DARK SPOTS', 'FINE LINES', 'LARGE PORES', 'NOT SURE'],
    ['TWICE DAILY', 'ONCE DAILY', 'OCCASIONALLY', 'RARELY'],
    ['YES', 'NO'],
    ['UNDER 18', '18-34',  '35-44', '45-54', '55 AND OVER'],
  ];

  TextStyle optionTextStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    fontFamily: 'Lato',
    color: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StylesPlus.main_bg,
      appBar: PreferredSize(
        preferredSize: Size.square(60),
        child: AppBar(
          backgroundColor: StylesPlus.main_bg,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, size: 25, color: Colors.black),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: LinearPercentIndicator(
                  lineHeight: 10,
                  width: 250,
                  barRadius: Radius.circular(2),
                  progressColor: Color(0xff585656),
                  backgroundColor: Color(0xff585656),
                ),
              ),
              SizedBox(
                width: 50,
                height: 60,
                child: TextButton(
                  onPressed: () {
                    // Handle the "Skip" button's action
                  },
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
        ),
      ),
      body: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Column(
                    children: [
                      Text(
                        questions[currentStep],
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Plus Jakarta Sans',
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 8),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'You can select multiple options as well',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(21, 15, 21, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      for (var option in options[currentStep])
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                if (selectedOptions.contains(option)) {
                                  selectedOptions.remove(option);
                                } else {
                                  selectedOptions.add(option);
                                }
                              });
                            },
                            child: Container(
                              width: 365, height: 56,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: selectedOptions.contains(option)
                                      ? StylesPlus.bgColor
                                      : Color(0xffEDFEFB),
                                ),
                                borderRadius: BorderRadius.circular(100),
                                color: selectedOptions.contains(option)
                                    ?Color(0xffEDFEFB)
                                    : Color(0xffEDFEFB),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  option,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Lato',
                                    letterSpacing: 1.25,
                                    color: selectedOptions.contains(option)
                                        ? Colors.black
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                    ],
                  ),
                ),
              ),
    ],
    ),
          SizedBox(height: 40,),
          Container(
            child: Column(
              children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (currentStep < questions.length - 1) {
                            currentStep++;
                          } else {
                            // Navigate to another screen when all questions are answered
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DoneScreen(), // Replace 'AnotherScreen' with your target screen
                              ),
                            );
                          }
                        });// Handle the "NEXT" button's action
                      },
                      style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all(Size(350, 56)),
                        backgroundColor: MaterialStateProperty.all(StylesPlus.bgColor),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        ),),
                      child: const Text(
                        'NEXT',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Lato',
                          color: Colors.white,
                          letterSpacing: 1.25,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



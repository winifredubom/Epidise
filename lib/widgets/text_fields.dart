import 'package:flutter/material.dart';
import 'package:task_2/styles/styles.dart';

class CustomTextField extends StatefulWidget {
   CustomTextField ({Key? key,}) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();

}
class _CustomTextFieldState extends State<CustomTextField> {
  late final String hintText;
  final TextEditingController _emailController = TextEditingController();
  late final TextEditingController controller;
  late final TextInputType keyboardType;
  String? _emailError;


  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: TextFormField(
          controller: _emailController,
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: StylesPlus.bgColor),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: 'Email',
            hintStyle: TextStyle(
                color: StylesPlus.bgColor,
            fontSize: 16,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w500),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                color: _emailError != null ? Colors.red : StylesPlus.bgColor,
              ),
            ),
          ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your email address';
          }
          return null;
        },
      ),
    );
  }
}



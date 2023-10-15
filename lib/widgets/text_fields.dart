import 'package:flutter/material.dart';
import 'package:task_2/styles/styles.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField({Key? key}) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final TextEditingController _emailController = TextEditingController();
  String? _emailError;
  final bool _isLogin = false;
  bool _loading = false;
  final _formKey = GlobalKey<FormState>();

  void validateEmail(String email) {
    // Implement your email validation logic here, and set _emailError accordingly.
    if (email.isEmpty) {
      _emailError = 'Email is required';
    } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}').hasMatch(email)) {
      _emailError = 'Invalid email format';
    } else {
      _emailError = null; // No error
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: TextFormField(
        controller: _emailController,
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(color: StylesPlus.bgColor),
        onChanged: (email) {
          setState(() {
            validateEmail(email);
          });
        },
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Email',
          hintStyle: TextStyle(
            color: StylesPlus.bgColor,
            fontSize: 16,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w500,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color:StylesPlus.bgColor
            ),
          ),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter your email address';
          } else if (_emailError != null) {
            return _emailError;
          }
          return null;
        },
      ),
    );
  }
}

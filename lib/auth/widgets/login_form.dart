import 'package:flutter/material.dart';
import '../../common_widgets/custom_flatButton.dart';
import '../../common_widgets/custom_textField.dart';

class LogInForm extends StatefulWidget {
  @override
  _LogInFormState createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  var _email = '';
  var _password = '';

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _logIn() {
    try {
      _formKey.currentState.validate();
      print(_email);
      print(_password);
    } on Exception catch (e) {
      print("ERROR : $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextField(
            label: 'Email',
            validator: (value) {
              if (value.isEmpty) {
                return "Please enter email";
              } else if (!value.endsWith('@iiitkottayam.ac.in')) {
                return 'Please enter a valid email';
              }
              return null;
            },
            onChanged: (value) {
              setState(() {
                _email = value;
              });
            },
          ),
          CustomTextField(
            label: 'Password',
            isPassword: true,
            validator: (value) {
              if (value.isEmpty) {
                return "Please enter password";
              }
              return null;
            },
            isLast: true,
            onChanged: (value) {
              setState(() {
                _password = value;
              });
            },
          ),
          SizedBox(height: 60),
          CustomFlatButton(
            label: 'SIGN IN',
            onPressed: _logIn,
          ),
        ],
      ),
    );
  }
}

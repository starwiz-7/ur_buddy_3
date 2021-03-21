import 'package:flutter/material.dart';
import '../../common_widgets/custom_flatButton.dart';
import '../../common_widgets/custom_textField.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  var _name = '';
  var _email = '';
  var _password = '';
  var _confirmPass = '';

  final _formKey = GlobalKey<FormState>();

  void _signUp(){

    _formKey.currentState.validate();

    print(_name);
    print(_email);
    print(_password);
    print(_confirmPass);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextField(
            label: 'Name',
            onChanged: (value) {
              _name = value;
            },
            validator: (value) {
              if (value.isEmpty) {
                return "Please enter name";
              }
              return null;
            },
          ),
          CustomTextField(
            label: 'Email',
            onChanged: (value) {
              _email = value;
            },
            validator: (value) {
              if (value.isEmpty) {
                return "Please enter email";
              } else if (!value.endsWith('@iiitkottayam.ac.in')) {
                return 'Please enter a valid email';
              }
              return null;
            },
          ),
          CustomTextField(
            isPassword: true,
            label: 'Password',
            onChanged: (value) {
              _password = value;
            },
            validator: (value) {
              if (value.isEmpty) {
                return "Please enter password";
              }
              return null;
            },
          ),
          CustomTextField(
            isLast: true,
            isPassword: true,
            label: 'Confirm Password',
            onChanged: (value) {
              _confirmPass = value;
            },
            validator: (value) {
              if (value.isEmpty) {
                return "Please re-enter password";
              } else if (value.compareTo(_password) != 0) {
                return "Passwords do not match";
              }
              return null;
            },
          ),
          SizedBox(height: 40),
          CustomFlatButton(
            label: 'REGISTER',
            onPressed: _signUp,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../widgets/alternate_auth_selector_button.dart';
import '../screens/signup_screen.dart';
import '../../common_widgets/custom_textField.dart';
import '../../common_widgets/custom_flatButton.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _email = '';
  String _password = '';

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
    final _theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 70),
                      Text(
                        "Let's sign you in.",
                        style: _theme.textTheme.headline4,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Welcome back.",
                        style: TextStyle(
                          fontSize: 30,
                          color: _theme.accentColor,
                        ),
                      ),
                      SizedBox(height: 60),
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
                      SizedBox(height: 15),
                      Center(
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            AlternateAuthSelectorButton(
              onTap: () => Navigator.of(context).pushNamed(SignUpScreen.routeName),
              text1: 'Don’t have an account? ',
              text2: 'Register',
            )
          ],
        ),
      ),
    );
  }
}

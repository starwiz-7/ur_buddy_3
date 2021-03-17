import 'package:flutter/material.dart';
import 'package:ur_buddy_3/auth/screens/login_screen.dart';
import '../widgets/alternate_auth_selector_button.dart';
import '../widgets/signup_form.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = '/signup-screen';

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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 70),
                    Text(
                      "Let's Register.",
                      style: _theme.textTheme.headline4,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Welcome.",
                      style: TextStyle(
                        fontSize: 30,
                        color: _theme.accentColor,
                      ),
                    ),
                    SizedBox(height: 40),
                    SignUpForm(),
                    SizedBox(height: 60),
                  ],
                ),
              ),
            ),
            AlternateAuthSelectorButton(
              text1: 'Already have an account? ',
              text2: 'Sign in',
              onTap: () => Navigator.of(context).pushReplacementNamed(LoginScreen.routeName),
            )
          ],
        ),
      ),
    );
  }
}

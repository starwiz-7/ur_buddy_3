import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './auth/screens/login_screen.dart';
import './auth/screens/signup_screen.dart';
import './profile/screens/profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Color primaryBlack = Color.fromRGBO(18, 18, 18, 1);
  final Color accentWhite = Color.fromRGBO(253, 244, 244, 1);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UrBuddy 3.0',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        fontFamily: 'Montserrat',
        primaryColor: primaryBlack,
        scaffoldBackgroundColor: primaryBlack,
        accentColor: accentWhite,
        appBarTheme: AppBarTheme(
          elevation: 0,
          backwardsCompatibility: false,
          iconTheme: IconThemeData(color: accentWhite, size: 24),
          titleTextStyle: TextStyle(
            fontFamily: 'Montserrat',
            color: accentWhite,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
          color: primaryBlack,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light,
            statusBarColor: primaryBlack,
          ),
        ),
        textTheme: TextTheme(
          headline6: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: accentWhite,
          ),
          headline4: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.bold,
            color: accentWhite,
          ),
          bodyText1: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: accentWhite,
          ),
        ),
      ),
      home: LoginScreen(),
      routes: {
        SignUpScreen.routeName: (context) => SignUpScreen(),
      },
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ur_buddy_3/auth/screens/login_screen.dart';

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
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

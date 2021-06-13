import 'package:flutter/material.dart';
import '../../buy_sell/screens/buy_sell_page.dart';
import '../../event/screens/event_page_dashboard.dart';
import '../../profile/screens/profile_page.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home-screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _children =
  [EventPageDashboard(),
    BuySellPage(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              this._currentIndex = index;
            }
            );
            // _navigateToScreens(index);
          },
          backgroundColor: Color(0xFF1E1C24),
          selectedItemColor: Theme.of(context).accentColor,
          unselectedItemColor: Theme.of(context).accentColor,
        items:[
          new BottomNavigationBarItem(
              icon: _currentIndex == 0? Icon(Icons.home):Icon(Icons.home_outlined),
              label: _currentIndex == 0?'Events':''
          ),
          new BottomNavigationBarItem(
              icon: _currentIndex == 1? Icon(Icons.shopping_cart):Icon(Icons.shopping_cart_outlined),
              label: _currentIndex == 1?'Classified':''
          ),
          new BottomNavigationBarItem(
              icon: _currentIndex == 2? Icon(Icons.account_circle): Icon(Icons.account_circle_outlined),
              label: _currentIndex == 2?'Account':''
          ),
        ]
      ),
    );
  }
}


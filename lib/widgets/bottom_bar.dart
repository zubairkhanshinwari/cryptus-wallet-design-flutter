import 'file:///D:/flutter/cryptus_wallet/lib/pages/home_page.dart';
import 'package:cryptuswallet/pages/frontPage.dart';
import 'package:cryptuswallet/pages/notification_page.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;
  Widget callPage(int currentIndex){
    switch(currentIndex){
        case 0: return FrontPage();
        case 1: return HomePage();
        case 2: return NotificationPage();
        break;
      default: return FrontPage();
     }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.red,
      body: callPage( _currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _currentIndex,
        onTap: (value){
          _currentIndex = value;
          setState(() {
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text('Message'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text('Notification'),
          ),

        ],
      ),
    );
  }
}

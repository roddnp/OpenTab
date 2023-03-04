import 'package:flutter/material.dart';
import 'package:opentab/screens/CheckoutPage.dart';
import 'package:opentab/screens/chatPage.dart';
import 'package:opentab/screens/menu.dart';
import 'package:opentab/screens/CheckoutPage.dart';

import 'chatDetailPage.dart';


int _currentIndex = 1;
final tabs = [
  ChatDetailPage(),
  Menu(),
  CheckoutPage()
];



class HomePage extends StatefulWidget {



  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey.shade600,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          if (index == 0) {
            setState(() {
              _currentIndex = 0;
            });
          } else if (index == 1) {
            setState(() {
              _currentIndex = 1;
            });
          } else {
            setState(() {
              _currentIndex = 2;
            });
          }
        },
        items:  [
          BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: "Chat"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.group_work),
              label: "Menu"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: "Tab"
          ),
        ],
      ),
    );

  }

}

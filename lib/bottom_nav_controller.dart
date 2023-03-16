import 'package:flutter/material.dart';

import 'pages/add_screen.dart';
import 'pages/home_screen.dart';
import 'pages/my_ads_screen.dart';
import 'pages/chat_screen.dart';
import 'pages/profile_screen.dart';

class BottomNavController extends StatefulWidget {
  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  final pages = [
    Home(),
    MyAds(),
    Add(),
    Chat(),
    Profile(),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
          onTap: (val) {
            setState(() {
              _currentIndex = val;
            });
          },
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.add_home_outlined),
                label: "Home",
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket), label: "My Ads"),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_outlined), label: "Add"),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_outlined), label: "Chat"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outlined), label: "Account"),
          ]),
      body: pages[_currentIndex],
    );
  }
}

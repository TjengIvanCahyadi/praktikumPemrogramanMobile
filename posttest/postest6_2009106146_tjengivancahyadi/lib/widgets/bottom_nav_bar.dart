import 'package:flutter/material.dart';
import 'package:postest6_2009106146_tjengivancahyadi/pages/home_page.dart';
import 'package:postest6_2009106146_tjengivancahyadi/pages/notification_page.dart';
import 'package:postest6_2009106146_tjengivancahyadi/pages/profile_page.dart';

class CBottomNavBar extends StatefulWidget {
  const CBottomNavBar({Key? key}) : super(key: key);

  @override
  State<CBottomNavBar> createState() => _CBottomNavBarState();
}

class _CBottomNavBarState extends State<CBottomNavBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    NotificationPage(),
    ProfilePage(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notifications",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Person",
          ),
        ],
      ),
    );
  }
}

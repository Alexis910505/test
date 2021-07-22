import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        selectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(
          color: Colors.black,
          size: 19,
        ),
        items: [
          BottomNavigationBarItem(
              activeIcon: Image.asset(
                'assets/group3.png',
                color: Color(0xFF03C3FF),
              ),
              icon: Image.asset('assets/group3.png'),
              title: Text(
                'Book',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                  fontStyle: FontStyle.normal,
                ),
              )),
          BottomNavigationBarItem(
              activeIcon: Image.asset(
                'assets/icons.png',
                color: Color(0xFF03C3FF),
              ),
              icon: Image.asset('assets/icons.png'),
              title: Text(
                'Book',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                  fontStyle: FontStyle.normal,
                ),
              )),
          BottomNavigationBarItem(
              activeIcon: Image.asset(
                'assets/profile.png',
                color: Color(0xFF03C3FF),
              ),
              icon: Image.asset('assets/profile.png'),
              title: Text(
                'Book',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                  fontStyle: FontStyle.normal,
                ),
              )),
        ]);
  }
}

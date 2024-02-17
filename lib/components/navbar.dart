import 'package:flutter/material.dart';

import 'package:actemo_flutter/screens/main_screen.dart';
import 'package:actemo_flutter/screens/identify/instructions.dart';
import 'package:actemo_flutter/screens/identify/summary.dart';
import 'package:actemo_flutter/screens/archive/archive.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentNavBarIndex = 0;

  final List<Widget> screens = [
    const MainScreen(),
    // Identify(),
    const Instructions(),
    Archive(),
    const Summary(),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90.0,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xffe2e2e9),
          elevation: 0,
          selectedLabelStyle: const TextStyle(
            fontFamily: 'Roboto',
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
            color: Color(0xff4088f0),
            height: 1.429,
            letterSpacing: 0.10,
          ),
          unselectedLabelStyle: const TextStyle(
            fontFamily: 'Roboto',
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
            color: Color(0xFF001B3E),
            height: 1.429,
            letterSpacing: 0.10,
          ),
          selectedIconTheme: const IconThemeData(
              color: Color(0xff4088f0),
          ),
          unselectedIconTheme: const IconThemeData(
            color: Color(0xFF001B3E),
          ),
          selectedItemColor: const Color(0xff4088f0),
          unselectedItemColor: const Color(0xFF001B3E),

          onTap: (int value) {
            setState(() {
              _currentNavBarIndex = value;
            });

            Navigator.push(context, MaterialPageRoute(builder: (context) => screens[_currentNavBarIndex]));
          },

          currentIndex: _currentNavBarIndex,

          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined,
              size: 24.0,
              ),
              label: 'Home',
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search,
                size: 24.0,
              ),
              label: 'Identify',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.attach_file,
                size: 24.0,
              ),
              label: 'Archive',
            ),
          ],
        ),
    );
  }
}

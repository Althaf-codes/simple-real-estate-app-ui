import 'package:flutter/material.dart';
import 'package:real_estate_app1/constants.dart';
import 'package:real_estate_app1/customIcons.dart';
import 'package:real_estate_app1/screens/Home/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  void _ontap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List<Widget> screens = [
    const HomeScreen(),
    const Icon(
      MyFlutterApp.search,
    ),
    const Icon(
      Icons.favorite_border_outlined,
    ),
    const Icon(
      MyFlutterApp.chat,
    ),
    const Icon(
      Icons.person_outline_rounded,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: purple,
          selectedLabelStyle: TextStyle(color: purple, fontSize: 12),
          type: BottomNavigationBarType.fixed,
          onTap: _ontap,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: const Icon(
                MyFlutterApp.home_2,
                color: Colors.grey,
                size: 20,
              ),
              activeIcon: Icon(MyFlutterApp.home_2, color: purple),
            ),
            BottomNavigationBarItem(
              label: 'Search',
              icon:
                  const Icon(MyFlutterApp.search, color: Colors.grey, size: 20),
              activeIcon: Icon(MyFlutterApp.search, color: purple),
            ),
            BottomNavigationBarItem(
              label: 'Favourite',
              icon: const Icon(Icons.favorite_border_outlined,
                  color: Colors.grey, size: 20),
              activeIcon: Icon(Icons.favorite_border_outlined, color: purple),
            ),
            BottomNavigationBarItem(
              label: 'Message',
              icon: const Icon(MyFlutterApp.chat, color: Colors.grey, size: 20),
              activeIcon: Icon(MyFlutterApp.chat, color: purple),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: const Icon(Icons.person_outline_rounded,
                  color: Colors.grey, size: 20),
              activeIcon: Icon(Icons.person_outline_rounded, color: purple),
            )
          ]),
    );
  }
}

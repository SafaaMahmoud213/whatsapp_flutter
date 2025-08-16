import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whats_app/features/home_screen/presentation/view/home_screen.dart';
import 'package:whats_app/features/updates_screen/presentation/view/update_screen.dart';

class ScreensBottomNav extends StatefulWidget {
  const ScreensBottomNav({super.key});

  @override
  State<ScreensBottomNav> createState() => _ScreensBottomNavState();
}

class _ScreensBottomNavState extends State<ScreensBottomNav> {
  List<Widget> pages = [
    UpdateScreen(),
    SizedBox(),
    SizedBox(),
    HomeScreen(),
    SizedBox(),
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: Container(
            color: Colors.grey.shade100,
            child: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.transparent,
              elevation: 0,
              iconSize: 22,
              selectedItemColor: Colors.black,

              selectedLabelStyle: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              unselectedItemColor: Colors.grey,
              unselectedLabelStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade100,
              ),
              items: [
                BottomNavigationBarItem(
                  activeIcon: Icon(CupertinoIcons.add_circled),
                  icon: Icon(CupertinoIcons.add, size: 20),
                  label: "Updates",
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(CupertinoIcons.phone_fill),
                  icon: Icon(CupertinoIcons.phone, size: 20),
                  label: "Calls",
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(CupertinoIcons.group_solid),
                  icon: Icon(CupertinoIcons.group, size: 20),
                  label: "Communities",
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(CupertinoIcons.chat_bubble_2_fill),
                  icon: Icon(CupertinoIcons.chat_bubble_2, size: 20),
                  label: "Chats",
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(CupertinoIcons.settings_solid),
                  icon: Icon(CupertinoIcons.settings, size: 20),
                  label: "Setting",
                ),
              ],
            ),
          ),
        ),
      ),

      body: pages[currentIndex],
    );
  }
}

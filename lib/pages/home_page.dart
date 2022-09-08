// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, no_leading_underscores_for_local_identifiers, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ionicons/ionicons.dart';
import 'course_page.dart';
import 'course_category.dart';
import 'notifications.dart';
import 'profile.dart';
import 'schedule_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pages = [
    SchedulePage(),
    CoursePage(),
    CoursePage(),
    NotificationsPage(),
    ProfilePage(),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.shifting,
          iconSize: 18.0,
          currentIndex: _currentIndex,
          backgroundColor: Colors.blueGrey[900],
          selectedItemColor: Colors.grey[700],
          unselectedItemColor: Colors.grey,
          selectedLabelStyle:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          items: [
            BottomNavigationBarItem(
              icon: _currentIndex == 0
                  ? Icon(IconlyBold.category)
                  : Icon(IconlyLight.category),
              label: 'Schedule',
            ),
            BottomNavigationBarItem(
              label: 'Recommended',
              icon: _currentIndex == 1
                  ? Icon(IconlyBold.bookmark)
                  : Icon(IconlyLight.bookmark),
            ),
            BottomNavigationBarItem(
              icon: _currentIndex == 2
                  ? Icon(Ionicons.book)
                  : Icon(Ionicons.book_outline),
              label: 'Courses',
            ),
            BottomNavigationBarItem(
              icon: _currentIndex == 3
                  ? Icon(IconlyBold.notification)
                  : Icon(IconlyLight.notification),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: _currentIndex == 4
                  ? Icon(IconlyBold.profile)
                  : Icon(IconlyLight.profile),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}

/*

FeatherIcons.grid
FeatherIcons.book
FeatherIcons.bookOpen
FeatherIcons.bell
FeatherIcons.user

*/
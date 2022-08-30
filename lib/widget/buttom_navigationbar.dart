import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sele_villa_emomerse/model/profile.dart';
import 'package:sele_villa_emomerse/screen/cartPage.dart';
import 'package:sele_villa_emomerse/screen/home_page.dart';
import 'package:sele_villa_emomerse/screen/notification_page.dart';

import '../screen/sething_page.dart';

class ButtomNaviBar extends StatefulWidget {
  @override
  State<ButtomNaviBar> createState() => _ButtomNaviBarState();
}

class _ButtomNaviBarState extends State<ButtomNaviBar> {
  int selectedIndex = 0;
  void _navigationbar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomePage(),
    CartPage(),
    NotificationPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // backgroundColor: Colors.green[100],
        selectedItemColor: Color.fromARGB(255, 244, 68, 55),
        currentIndex: selectedIndex,
        onTap: _navigationbar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Order'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_on), label: 'Notification'),

          // BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Home'),
        ],
      ),
    );
  }
}

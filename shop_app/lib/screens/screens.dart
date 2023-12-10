import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

import 'cart_screen.dart';
import 'home_screen.dart';

class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  late int _selectedIndex = 0;
  // ignore: prefer_final_fields
  static List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    CartScreen(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(0.1)
            )
          ]
        ),
        child: 
        SafeArea(
          child: 
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 8
            ),
            child: GNav(
              rippleColor:  Colors.grey.shade300,
              hoverColor: Colors.grey.shade100,
              gap: 8,
              activeColor: Colors.white,
              iconSize: 33,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              duration: const  Duration(microseconds: 400),
              tabBackgroundColor: Colors.redAccent,
              color:  Colors.black,
              tabs: const [
                GButton(icon: LineIcons.home, text: 'Home'),
                GButton(icon: LineIcons.shoppingBag, text: 'Cart'),
                GButton(icon: LineIcons.heart, text: 'Wishlist'),
                GButton(icon: LineIcons.user, text: 'Account'),
              ],
              selectedIndex:  _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
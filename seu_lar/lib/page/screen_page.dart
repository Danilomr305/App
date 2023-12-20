// ignore_for_file: prefer_final_fields, unused_field
import 'package:line_icons/line_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'home_page.dart';

class ScreenPage extends StatefulWidget {
  const ScreenPage({super.key});

  @override
  State<ScreenPage> createState() => _ScreenPageState();
}

class _ScreenPageState extends State<ScreenPage> {
  late int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget> [
    HomePage(),
    Container(),
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
          color: Colors.black,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black45.withOpacity(0.2)
            )
          ]
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 8
            ),
            child: GNav(
              rippleColor: Colors.black45,
              hoverColor: Colors.black,
              gap: 8,
              activeColor: Colors.brown,
              iconSize: 37,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 8,
              ),
              tabBackgroundColor: Colors.white,
              color: Colors.white,
              duration: const Duration(
                milliseconds: 800
              ),
              tabs: const [
                GButton(
                  icon: LineIcons.home,
                  text: "Home",
                ),

                GButton(
                  icon: LineIcons.shoppingBag,
                  text: "Cart",
                ),

                GButton(
                  icon: LineIcons.heart,
                  text: "Account",
                ),
              ],
              selectedIndex: _selectedIndex,
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
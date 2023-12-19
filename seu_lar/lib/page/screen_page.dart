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
    const HomePage(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.lightGreenAccent,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black45.withOpacity(2)
            )
          ]
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 8
            ),
            child: GNav(),
            ),
        ),
      ),
    );
  }
}
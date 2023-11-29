// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
// ignore: unused_import
import '../components/bottom_nav_bar.dart';

// ignore: must_be_immutable
class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange,});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: GNav(
        onTabChange: (value) =>
        onTabChange!(value),
        color: Colors.green.shade400,
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.white,
        tabBackgroundColor: Colors.green.shade300,
        tabBorderRadius: 24,
        tabActiveBorder: Border.all(
          color: Colors.white
        ),
        tabs: const [
          GButton(
            icon: Icons.time_to_leave_outlined,
            text: 'Times',
            ),
        ]
      ),
    );
  }
}
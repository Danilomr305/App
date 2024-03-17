
// ignore_for_file: unused_import, duplicate_ignore

import 'package:flutter/material.dart';
// ignore: unused_import
import '../components/bottom_nav_bar.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:icofont_flutter/icofont_flutter.dart';

// ignore: must_be_immutable
class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange,});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.all(
            12
          ),
          child: GNav(
            padding:const EdgeInsets.all(15),
            onTabChange: (value) => onTabChange!(value),
            color: Colors.black,
                mainAxisAlignment: MainAxisAlignment.center,
                activeColor: Colors.white,
            tabBackgroundColor: Colors.black,
                tabBorderRadius: 24,
                tabActiveBorder: Border.all(color: Colors.white),
            tabs: const [
              GButton(
                icon: Icons.home_outlined,
                text: 'Inicio',
              ),
              GButton(
                icon: IcoFontIcons.coins,
                text: 'Moedas',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Conta',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';

class BottomDrawer extends StatefulWidget {
  const BottomDrawer({super.key});

  @override
  State<BottomDrawer> createState() => _BottomDrawerState();
}

class _BottomDrawerState extends State<BottomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        children: const  [
          UserAccountsDrawerHeader(
            accountName: CircleAvatar(
              
            ), 
            accountEmail: Text(
              'danilomr305@gmail.com'
            )
          ),
          Card()
        ],
      ),
    );
  }
}
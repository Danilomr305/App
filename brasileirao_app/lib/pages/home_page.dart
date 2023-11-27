import 'package:flutter/material.dart';

import '../components/bottom_nav_bar.dart';

// ignore: unnecessary_import

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver {
  // navigate bottom bar
  // ignore: unused_field
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    PreferenciaTema.setTema();
    super.initState();
  }

  @override
  void dispose() {
   WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangePlatformBrightness() {
   PreferenciaTema.setTema();
  }


  // pages
  // ignore: unused_field
  final List <Widget> _pages = [
    // times page
    TimesPage(),
    
  ];

  @override
  Widget build(BuildContext context) {
      return 
         ValueListenableBuilder(
          valueListenable: PreferenciaTema.tema,
          builder: (BuildContext context, Brightness tema, _) => Scaffold(
              
              backgroundColor: blackgroundColor,
              bottomNavigationBar: MyBottomNavBar(
                onTabChange: (index) => navigateBottomBar(index),
              ),
              body: _pages[_selectedIndex],
            ),
         );
  }
}
// ignore_for_file: unused_import

import 'package:cardy_pay/Page/moedas_page.dart';
import 'package:cardy_pay/Page/home_principal_page.dart';
import 'package:cardy_pay/models/moeda_models.dart';
import 'package:flutter/material.dart';
import '../components/bottom_nav_bar.dart';
import '../configs/const_confing.dart';
import '../models/preferencia_tema.dart';
import 'carteira_page.dart';
import 'configuracoes_page.dart';

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
  if (index >= 0 && index < _pages.length) {
    setState(() {
      _selectedIndex = index;
    });
  }
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
    // Tela principal
    const HomePrincipal(),

    // Moedas 
    const MoedasPage(),

    // Conta Pessoal
    const ConfiguracoesPage(),

    // carteira da pessoal
    const CarteiraPage(),

    
  ];

  @override
  Widget build(BuildContext context) {
      return 
          ValueListenableBuilder(
            valueListenable: PreferenciaTema.tema,
            builder: (BuildContext context, Brightness tema, _) => Scaffold(
                
                backgroundColor: backgroundColor,
                bottomNavigationBar: MyBottomNavBar(
                  onTabChange: (index) => navigateBottomBar(index),
                ),
                body: _pages[_selectedIndex],
              ),
         );
  }
}


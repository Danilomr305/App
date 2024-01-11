import 'package:flutter/material.dart';

import 'carteira_page.dart';
import 'favorita_page.dart';
import 'moedas_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int paginaAtual = 0;
  late PageController pc;

  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: paginaAtual);
  }

  setPaginaAtual(pagina) {
    super.setState(() {
        paginaAtual = pagina;
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pc,
        onPageChanged: setPaginaAtual,
        children: const [
          MoedasPage(),
          FavoritaPage(),
          CarteiraPage(),
        ],
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: paginaAtual,
        type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_max_outlined),
            label: "Home"
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.align_horizontal_center_outlined),
            label: "Favorites"
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.contact_page_outlined),
            label: "Portfolio"
          )
        ],
        onTap: (pagina) {
          pc.animateToPage(
            pagina, 
            duration: const Duration(milliseconds: 500), 
            curve: Curves.ease);
        },
        backgroundColor: Colors.black,
      ),
    );
  }
}
import 'package:flutter/material.dart';

class FavoritaPage extends StatefulWidget {
  const FavoritaPage({super.key});

  @override
  State<FavoritaPage> createState() => _FavoritaPageState();
}

class _FavoritaPageState extends State<FavoritaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea( 
        child: Container(
          padding:const EdgeInsets.all(10),
          color: Colors.white54,
        )
      ),
    );
  }
}
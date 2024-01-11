import 'package:flutter/material.dart';

class CarteiraPage extends StatefulWidget {
  const CarteiraPage({super.key});

  @override
  State<CarteiraPage> createState() => _CarteiraPageState();
}

class _CarteiraPageState extends State<CarteiraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea( 
        child: Container(
          padding:const EdgeInsets.all(10),
          color: Colors.white70,
          child: const Text(
            "Welcone, Dnl!"
          ),
        )
      ),
    );
  }
}
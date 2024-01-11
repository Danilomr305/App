import 'package:flutter/material.dart';

class MoedasPage extends StatefulWidget {
  const MoedasPage({super.key});

  @override
  State<MoedasPage> createState() => _MoedasPageState();
}

class _MoedasPageState extends State<MoedasPage> {
  
var  nomeWelcome = [
      "Welcome"  
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea( 
        child: Container(
          padding:const EdgeInsets.all(10),
          color: Colors.white54,
          child: Text(
            nomeWelcome as String,
            style: const TextStyle(
              fontSize: 18
            ),
          ),
        )
      ),
    );
  }
}
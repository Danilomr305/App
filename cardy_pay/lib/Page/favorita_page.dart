import 'package:flutter/material.dart';

class FavoritaPage extends StatefulWidget {
  const FavoritaPage({super.key});

  @override
  State<FavoritaPage> createState() => _FavoritaPageState();
}

class _FavoritaPageState extends State<FavoritaPage> {
  @override
  Widget build(BuildContext context) {

    final names = ['danilo', 'ravena', 'victor', 'rafael'];

    return Scaffold(
      body: SafeArea( 
        child: SingleChildScrollView(
          child: SizedBox(
              width: double.infinity,
              child: ListView.builder(
                itemCount: names.length,
                itemBuilder: (context, index) {
                  final name = names[index];
                  return ListTile(
                    title: Text(name),
                  );
                }
              ),
            ),
        )
      ),
    );
  }
}
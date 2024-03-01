// ignore_for_file: unused_import, duplicate_ignore

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:intl/intl.dart';
import '../models/moeda_models.dart';
import 'package:provider/provider.dart';


class FavoritasPage extends StatefulWidget {
  const FavoritasPage({super.key});

  @override
  State<FavoritasPage> createState() => _FavoritasPageState();
}

class _FavoritasPageState extends State<FavoritasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Moedas Favoritas'),
      ),
      body: Container(
        color: Colors.black54.withOpacity((0.05)),
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(12.0),
        child: const ListTile(
          leading: Icon(Icons.star),
          title: Text('Ainda não há moedas favoritas'),
        ),
      ),
    );
  }
}
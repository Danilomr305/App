// ignore_for_file: unused_import, duplicate_ignore

import 'package:cardy_pay/repository/favoritas_repository.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:intl/intl.dart';
import '../models/moeda_models.dart';
import 'package:provider/provider.dart';
import '../widgets/moeda_card.dart';


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
        backgroundColor: Colors.black,
        title:const Text('Moedas Favoritas',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),
        ),
      ),
      body: 
          Container(
            color: Colors.black54.withOpacity((0.05)),
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(12.0),
            child: Consumer<FavoritasRepository>(
              builder: (context, favoritas, child) { 
                return favoritas.lista.isEmpty
                ? const ListTile(
                  leading: Icon(Icons.start),
                  title: Text('Ainda não há moedas favoritas'),
                )
                : ListView.builder(
                  itemBuilder: (_, index) {
                    return MoedaCard(moeda: favoritas.lista[index]);
                  }
                );
               },
            )
      )
    );
  }
}
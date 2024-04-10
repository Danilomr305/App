// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'dart:collection';
import 'package:cardy_pay/database/db_firestore.dart';
import 'package:cardy_pay/repository/moedas_repository.dart';
import 'package:cardy_pay/services/auth_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import '../models/moeda_models.dart';

class FavoritasRepository extends ChangeNotifier {
  final List<Moeda> _lista = [];
  late FirebaseFirestore db;
  late AuthService auth;

  FavoritasRepository( {required this.auth}) {
    _startRepository();
  }

  _startRepository() async {
    await _startFirestore();
    await _readFavoritas();
  }

  _startFirestore() {
    db = DBFirestore.get();
  }

  _readFavoritas() async {
    if(auth.usuario != null  && _lista.isEmpty) {

      final snapshot = 
        await db.collection('usuarios/${auth.usuario!.uid}/favoritas').get();

      snapshot.docs.forEach((doc) {
        Moeda moeda = MoedaRepository.tabela
          .firstWhere((moeda) => moeda.sigla == doc.get('sigla'));
        _lista.add(moeda);
        notifyListeners();
      });
    }
  }

  UnmodifiableListView<Moeda> get lista => UnmodifiableListView(_lista);
  saveAll(List<Moeda> moedas) async {
    for (var moeda in moedas) {
      if(! _lista.any((atual) => atual.sigla  == moeda.sigla)) {
        _lista.add(moeda);
        await db.collection('usuarios/${auth.usuario!.uid}/favoritas')
        .doc(moeda.sigla)
        .set({
          'moeda': moeda.nome,
          'sigla': moeda.sigla,
          'preco': moeda.preco,
        });
      } 
    }
    notifyListeners();
  }

  remove(Moeda moeda)  async{
    await db.collection('usuarios/${auth.usuario!.uid}/favoritas')
    .doc(
      moeda.sigla
    ).
    delete();
    _lista.remove(moeda);
    notifyListeners();
  }
}
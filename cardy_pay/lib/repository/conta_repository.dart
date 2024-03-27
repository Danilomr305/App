// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';

import '../database/db.dart';
import '../models/moeda_models.dart';
import '../models/posicao.dart';

class ContaRepository extends ChangeNotifier {
  late Database db;
  final List<Posicao> _carteira = [];
  late double _saldo = 0;

  get saldo => _saldo;
  List<Posicao> get carteira => _carteira;

  ContaRepository() {
    _initRepository();
  }

  _initRepository() async {
    await _getSaldo();
  }

  _getSaldo() async {
    db = await DB.instance.database;
    List conta = await db.query('conta', limit: 1);
    // ignore: unused_local_variable
    final _saldo = conta.first['saldo'];
    notifyListeners();
  }

  setSaldo(double valor) async {
    db =await DB.instance.database;
    db.update('conta', {
      'saldo': valor,
    });
    _saldo = valor;
    notifyListeners();
  }

  comprar(Moeda moeda, double valor) async {
    db = await DB.instance.database;
    await db.transaction((txn) async {
      final posicaoMoeda = await txn.query(
        'carteira',
        where: 'sigla = ?',
        whereArgs: [moeda.sigla]
      );

      if (posicaoMoeda.isEmpty) {
        await txn.insert('carteira', {
          'sigla': moeda.sigla,
          'moeda': moeda.nome,
          'quantidade': (valor / moeda.preco).toString()
        });
      }

      else {
        // ignore: unused_local_variable
        final atual = double.parse(posicaoMoeda.first['quantidade'].toString());
        await txn.update('carteira', {});
      }
    });
  }
}
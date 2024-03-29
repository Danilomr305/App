// ignore_for_file: no_leading_underscores_for_local_identifiers, unused_element, avoid_function_literals_in_foreach_calls

import 'package:cardy_pay/repository/moedas_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';

import '../database/db.dart';
import '../models/moeda_models.dart';
import '../models/posicao.dart';

class ContaRepository extends ChangeNotifier {
  late Database db;
  late final List<Posicao> _carteira = [];
  late double _saldo = 0;

  get saldo => _saldo;
  List<Posicao> get carteira => _carteira;

  ContaRepository() {
    _initRepository();
  }

  _initRepository() async {
    await _getSaldo();
    await _getCarteira();
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

      // Já tem a moeda em carteira

      else {
        // ignore: unused_local_variable
        final atual = double.parse(posicaoMoeda.first['quantidade'].toString());
        await txn.update('carteira', {
          'carteira': (atual + (valor / moeda.preco)).toString(),
        }, where: 'sigla = ?', whereArgs: [moeda.sigla]);
      }

      // Inserir a compra no historico

      await txn.insert('historico', {
        'sigla': moeda.sigla,
        'moeda': moeda.nome,
        'quantidade': (valor / moeda.preco).toString(),
        'valor': valor,
        'tipo_operacao': 'comprar',
        'data_operacao': DateTime.now().millisecondsSinceEpoch
      });

      await txn.update('conta', {'saldo': saldo - valor});
    });

    await _initRepository();
    notifyListeners();
  }

  _getCarteira() async {
      final _carteira = [];
      List posicoes = await db.query('carteira');
      posicoes.forEach((posicao) {
        Moeda moeda = MoedaRepository.tabela.firstWhere(
          (m) => m.sigla == posicao['sigla'],
        );
        _carteira.add(Posicao(
          moeda: moeda, 
          quantidade: double.parse(posicao('quantidade')),
        ));
      });
      notifyListeners();
    }
}
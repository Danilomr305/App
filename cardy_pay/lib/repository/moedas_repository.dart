import 'package:cardy_pay/models/moeda_models.dart';
import 'package:flutter/cupertino.dart';

class MoedaRepository extends ChangeNotifier{
  List<Moeda> _tabela = [];
  List<Moeda> get tabela => _tabela;

  MoedaRepository() {
    _setupMoedasTable();
  }

  _setupMoedasTable() {
    
  }
}
import 'moeda_models.dart';

class Historico {
  DateTime dataOperacao;
  String tipoperacao;
  Moeda moeda;
  double valor;
  double quantidade;

  Historico({
    required this.dataOperacao,
    required this.tipoperacao,
    required this.moeda,
    required this.valor,
    required this.quantidade,

  });
}
import 'package:cardy_pay/models/moeda_models.dart';

class MoedaRepository {
  static List<Moeda> tabela = [
    Moeda(
      icone: "imagens/fecebook.png", 
      nome: 'Fecebook', 
      sigla: 'Fc', 
      preco: 123
    ),

    Moeda(
      icone: 'imagens/github.png', 
      nome: 'GitHub', 
      sigla: 'GitH', 
      preco: 230
    ),

    Moeda(
      icone: 'imagens/twitter.png', 
      nome: 'Twitter', 
      sigla: 'X', 
      preco: 1000
    ),
  ];
}
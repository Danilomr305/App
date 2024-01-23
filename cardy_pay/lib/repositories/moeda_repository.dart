import 'package:cardy_pay/models/moeda_models.dart';

class MoedaRepository {
  static  List<Moeda> tabela = [
    Moeda(
      icone: 'imagens/github.png', 
      nome: 'github', 
      sigla: 'git', 
      preco: 164603.00
    ),

    Moeda(
      icone: 'imagens/facebok.png', 
      nome: 'facebook', 
      sigla: 'fc', 
      preco: 676343.00
    ),

    Moeda(
      icone: 'imagens/twitter.png', 
      nome: 'twitter', 
      sigla: 'x', 
      preco: 264503.00
    ),
  ];
}
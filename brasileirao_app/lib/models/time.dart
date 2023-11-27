import 'package:flutter/material.dart';

import 'titulo.dart';

class Time {
  int id;
  String nome;
  String brasao;
  int pontos;
  Color cor;
  late List<Titulo> titulo = [];

  Time({
    required this.id,
    required this.nome,
    required this.brasao,
    required this.cor, 
    required this.pontos,
    required this.titulo,
  }
);
}
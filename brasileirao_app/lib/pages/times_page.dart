import 'dart:collection';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:get/get.dart';
// ignore: unused_import
import 'package:provider/provider.dart';
import '../database/db.dart';
import '../models/time.dart';
// ignore: unused_import
import '../models/titulo.dart';

class TimesRepository  extends ChangeNotifier {
  final List<Time> _times = [];
  final loading = ValueNotifier(false);


  // ignore: unnecessary_this
  UnmodifiableListView<Time> get times => UnmodifiableListView(_times);

  void addTitulo({required Time time, required Titulo titulo}) async {
    var db = await DB.instance.database;
    int id = await db.insert('titulo', {
      'campeonato': titulo.campeonato,
      'ano': titulo.ano,
      'time_id': time.id,
    });

    titulo.id = id;
    time.titulo.add(titulo);
    notifyListeners();
  }

  void editTitulo({
    required Titulo titulo, 
    required String ano, 
    required String campeonato
    }) async {
    var db = await DB.instance.database;
    await db.update('titulos', {
      'campeonato': campeonato,
      'id': ano,
    },where:'id = ?',  whereArgs: [titulo.id]);

    titulo.campeonato = campeonato;
    titulo.ano = ano;
    notifyListeners();
  }
  
  static setupTimes() {
    
    return[
         Time(
        nome: 'Flamengo',
        pontos: 0,
        brasao: 'https://logodetimes.com/times/flamengo/logo-flamengo-256.png',
        cor: Colors.red.shade900,
        id: 18, 
        titulo: [],
      ),
      Time(
        nome: 'Internacional',
        pontos: 0,
        brasao:
            'https://logodetimes.com/times/internacional/logo-internacional-256.png',
        cor: Colors.red.shade900,
        id: 44, 
        titulo: [],
      ),
      Time(
        nome: 'Atlético-MG',
        pontos: 0,
        brasao:
            'https://logodetimes.com/times/atletico-mineiro/logo-atletico-mineiro-256.png',
        cor: Colors.grey.shade900,
        id: 30, 
        titulo: [],
      ),
      Time(
        nome: 'São Paulo',
        pontos: 0,
        brasao:
            'https://logodetimes.com/times/sao-paulo/logo-sao-paulo-256.png',
        cor: Colors.red.shade900,
        id: 57, 
        titulo: [],
      ),
      Time(
        nome: 'Fluminense',
        pontos: 0,
        brasao:
            'https://logodetimes.com/times/fluminense/logo-fluminense-256.png',
        cor: Colors.teal.shade900,
        id: 26, 
        titulo: [],
      ),
      Time(
        nome: 'Grêmio',
        pontos: 0,
        brasao: 'https://logodetimes.com/times/gremio/logo-gremio-256.png',
        cor: Colors.blue.shade900,
        id: 45, 
        titulo: [],
      ),
      Time(
        nome: 'Palmeiras',
        pontos: 0,
        brasao:
            'https://logodetimes.com/times/palmeiras/logo-palmeiras-256.png',
        cor: Colors.green.shade900,
        id: 56, 
        titulo: [],
      ),
      Time(
        nome: 'Santos',
        pontos: 0,
        brasao: 'https://logodetimes.com/times/santos/logo-santos-256.png',
        cor: Colors.grey.shade900,
        id: 63, 
        titulo: [],
      ),
      Time(
        nome: 'Athletico-PR',
        pontos: 0,
        brasao:
            'https://logodetimes.com/times/atletico-paranaense/logo-atletico-paranaense-256.png',
        cor: Colors.red.shade900,
        id: 185, 
        titulo: [],
      ),
      Time(
        nome: 'Corinthians',
        pontos: 0,
        brasao:
            'https://logodetimes.com/times/corinthians/logo-corinthians-256.png',
        cor: Colors.grey.shade900,
        id: 65, 
        titulo: [],
      ),
      Time(
        nome: 'Bragantino',
        pontos: 0,
        brasao:
            'https://logodetimes.com/times/red-bull-bragantino/logo-red-bull-bragantino-256.png',
        cor: Colors.grey.shade900,
        id: 64, 
        titulo: [],
      ),
      Time(
        nome: 'Ceará',
        pontos: 0,
        brasao: 'https://logodetimes.com/times/ceara/logo-ceara-256.png',
        cor: Colors.grey.shade900,
        id: 105, 
        titulo: [],
      ),
      Time(
        nome: 'Atlético-GO',
        pontos: 0,
        brasao:'https://logodetimes.com/times/atletico-goianiense/logo-atletico-goianiense-256.png',
        cor: Colors.red.shade900,
        id: 98, 
        titulo: [],
      ),
      Time(
        nome: 'Sport',
        pontos: 0,
        brasao:'https://logodetimes.com/times/sport-recife/logo-sport-recife-256.png',
        cor: Colors.red.shade900,
        id: 79, 
        titulo: [],
      ),
      Time(
        nome: 'Bahia',
        pontos: 0,
        brasao: 'https://logodetimes.com/times/bahia/logo-bahia-256.png',
        cor: Colors.blue.shade900,
        id: 68, 
        titulo: [],
      ),
      Time(
        nome: 'Fortaleza',
        pontos: 0,
        brasao:'https://logodetimes.com/times/fortaleza/logo-fortaleza-256.png',
        cor: Colors.red.shade900,
        id: 131, 
        titulo: [],
      ),
      Time(
        nome: 'Vasco',
        pontos: 0,
        brasao:'https://logodetimes.com/times/vasco-da-gama/logo-vasco-da-gama-256.png',
        cor: Color(Colors.grey.shade900.value),
        id: 23, 
        titulo: [],
      ),
      Time(
        nome: 'Goiás',
        pontos: 0,
        brasao: 'https://logodetimes.com/times/goias/logo-goias-novo-256.png',
        cor: Colors.green.shade900,
        id: 115, 
        titulo: [],
      ),
      Time(
        nome: 'Coritiba',
        pontos: 0,
        brasao: 'https://logodetimes.com/times/coritiba/logo-coritiba-5.png',
        cor: Colors.green.shade900,
        id: 84, 
        titulo: [],
      ),
      Time(
        nome: 'Botafogo',
        pontos: 0,
        brasao: 'https://logodetimes.com/times/botafogo/logo-botafogo-256.png',
        cor: Colors.grey.shade900,
        id: 22,
        titulo: [],
      ),
      ];
  }

  TimesRepository() {
    initRepository();
  }

 initRepository() async {
  var obj = await DB.instance.value();
  List times = await obj.query("Time");
  
  for (var time in times) {
    _times.add(Time(
      id: time['id'],
      nome: time['nome'],
      pontos: time['pontos'],
      brasao: time['brasao'],
      cor: Color(int.parse(time['cor'])),
      titulo: await getTitulos(time['id']),
    ));
  }
  
  notifyListeners();
}

  Future<List<Titulo>> getTitulos(timeId) async {
  var db = await DB.instance.value();
  var results = await db.query('titulo', where: 'time_id = ?', whereArgs: [timeId]);
  List<Titulo> titulos = [];

  for (var titulo in results) {
    titulos.add(Titulo(
      id: titulo['id'],
      campeonato: titulo['campeonato'],
      ano: titulo['ano'],
    ));
  }

  return titulos;
}
}
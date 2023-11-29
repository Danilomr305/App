// ignore: unused_import
import 'dart:ffi';
import '../models/time.dart';
import 'package:sqflite/sqflite.dart';
// ignore: unnecessary_import, unused_import
import 'package:sqflite/sqlite_api.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';

import '../repository/times_repository.dart';

class DB {
  DB._();
  static final DB instance = DB._();
  late Database? _cachedDatabase;

  Future<Database> get database async {
    if (_cachedDatabase != null) {
      return _cachedDatabase!;
    }

    _cachedDatabase = await initDatabase();
    return _cachedDatabase!;
  }

  initDatabase() async {  
     return await openDatabase(
    join(await getDatabasesPath(), 'dados.db'),
      version: 1,
      onCreate: (db, versao) async {
        await db.execute(times);
        await db.execute(titulos);
        await setupTimes(db);
      },  
    );
  }         

  setupTimes(db) async {
    for (Time time in TimesRepository.setupTimes()) {
      await db.insert('times', {
        'nome': time.nome,
        'brasao': time.brasao,
        'pontos': time.pontos,
        'id': time.id,
        'cor': time.cor.toString().replaceAll('Color(', '').replaceAll(')', ''),
      });
    }
  }
 
  String get times => ''' 
    CREATE TABLE times (
      id INTEGER PRIMARY KEY AUTOINCREMENT, 
      nome TEXT,
      pontos INTEGER,
      brasao TEXT,
      cor TEXT,
      id INTEGER
    );
  ''';

  String get titulos => '''
    CREATE TABLE titulos (
      id INTEGER PRIMARY KEY AUTOINCREMENT, 
      campeonato TEXT,
      ano TEXT,
      time_id INTEGER,
      FOREIGN KEY (time_id) REFERENCES times(id) ON DELETE CASCADE
    );
  ''';

  value() {}
}



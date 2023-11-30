import 'package:brasileirao_app/repository/times_repository.dart';
import 'package:brasileirao_app/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'configs/hive_configs.dart';
import 'package:firebase_core/firebase_core.dart';
import 'meu_aplicativo.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await HiveConfig.start();

  await Firebase.initializeApp();


  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthService()),
        ChangeNotifierProvider(create: (context) => TimesRepository())
      ],
      child: const MeuApp(),
    ),
  );
}

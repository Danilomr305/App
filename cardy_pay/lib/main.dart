// ignore_for_file: unused_import
import 'package:cardy_pay/repository/conta_repository.dart';
import 'package:hive/hive.dart';
import 'package:cardy_pay/Page/home_page.dart';
import 'package:cardy_pay/configs/app_settings.dart';
import 'package:cardy_pay/repository/favoritas_repository.dart';
import 'package:cardy_pay/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:provider/provider.dart';

import 'configs/hive_config.dart';


Future<void> main () async {
  WidgetsFlutterBinding.ensureInitialized();

  await  HiveConfig.start();
  
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ContaRepository(),
        ),
        ChangeNotifierProvider(
          create: (context) => FavoritasRepository(),
        ),
        ChangeNotifierProvider(
          create: (context) => AppSettings(),
        )
      ],
      child: const MeuApp(),
    ),
  );
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Cardy_Pay',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:seu_lar/page/login_page.dart';

import 'page/screen_page.dart';

void main () {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenPage(),
    );
  }
}
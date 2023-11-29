import 'package:flutter/material.dart';

import 'widgets/auth_check.dart';

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'App Brasileirão',
      debugShowCheckedModeBanner: false,
      home: AuthCheck(),
    );
  }
}
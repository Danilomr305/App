// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:cardy_pay/Page/home_principal_page.dart';
import 'package:cardy_pay/Page/login_page.dart';
import 'package:cardy_pay/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthCkeck extends StatefulWidget {
  const AuthCkeck({super.key});

  @override
  State<AuthCkeck> createState() => _AuthCkeckState();
}

class _AuthCkeckState extends State<AuthCkeck> {
  @override
  Widget build(BuildContext context) {

    AuthService auth = Provider.of<AuthService>(context);
   
    if (auth.isLoading) {
      return loading();
    } else if (auth.usuario == null)
      return const LoginPage();
    else 
      return const HomePrincipal();
  }

  loading() {
    const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
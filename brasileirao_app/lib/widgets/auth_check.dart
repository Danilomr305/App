import 'package:flutter/cupertino.dart';

import '../services/auth_service.dart';

class AuthCheck extends StatefulWidget {
  const AuthCheck({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AuthCheckState createState() => _AuthCheckState();
}

class _AuthCheckState extends State<AuthCheck> {
  @override
  Widget build(BuildContext context) {
    AuthService auth = Provider.of<AuthService>(context);

    if(auth.isLoading) {
      return loading();
    } else if (auth.usuario == null) 
      // ignore: curly_braces_in_flow_control_structures
      return const LoginScreen();
    else 
      // ignore: curly_braces_in_flow_control_structures
      return  const HomePage();
  }
  loading() {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
  }
}
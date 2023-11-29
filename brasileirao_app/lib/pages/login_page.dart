import '../pages/home_page.dart';
import 'package:flutter/material.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff94593f),
                  Color(0xffd4ac9a),
                ]
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(
                top: 60.0,
                left: 22,
              ),
              child: Text(
                'Hello\nSingn in!',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 225.0
            ),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40)
                ),
                color: Colors.white
              ),
              height: double.infinity,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 18.0,
                  right: 18.0
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.check,
                          color: Colors.grey,
                        ),
                        label: Text(
                          'Gmail',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffB81736),
                            fontSize: 20
                          ),
                        )
                      ),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.visibility_off_outlined ,
                          color: Colors.grey,
                        ),
                        label: Text(
                          'Password',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffB81736),
                            fontSize: 20
                          ),
                        )
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xffB81736),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 70.0,
                    ),

                    GestureDetector(
                      onTap: () {
                          Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (context) => const HomePage())
                          );
                        },
                      child: Container(
                        height: 60,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xff94593f),
                              Color(0xffd4ac9a)
                            ]
                          ),
                        ),
                        child: 
                          const Center( 
                            child: Text(
                              'SIGN IN',
                              style: 
                            TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:icofont_flutter/icofont_flutter.dart';

class BottomDrawer extends StatefulWidget {
  const BottomDrawer({super.key});

  @override
  State<BottomDrawer> createState() => _BottomDrawerState();
}

class _BottomDrawerState extends State<BottomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        children: const  [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white
            ),
            accountName: CircleAvatar(
              
            ), 
            accountEmail: Text(
              'danilomr305@gmail.com',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            )
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              Padding(
                padding: EdgeInsets.all(
                  12
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.home_outlined,
                      color: Colors.black45,
                      size: 30,
                    ),

                    SizedBox(
                      width: 20,
                    ),

                    Text(
                      'INICIO',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),              
              ),

              Divider(color: Colors.white,),

              SizedBox(
                height: 15,
              ),

              Padding(
                padding: EdgeInsets.all(
                  12
                ),
                child: Row(
                  children: [
                    Icon(
                      IcoFontIcons.notification,
                      color: Colors.white,
                      size: 30,
                    ),

                    SizedBox(
                      width: 20,
                    ),

                    Text(
                      'NOTIFICACÕES',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),             
              ),

              SizedBox(
                height: 15,
              ),

              Padding(
                padding: EdgeInsets.all(
                  12
                ),
                child: Row(
                  children: [
                    Icon(
                      IcoFontIcons.history,
                      color: Colors.white,
                      size: 30,
                    ),

                    SizedBox(
                      width: 20,
                    ),

                    Text(
                      'HISTORICO',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),             
              ),

              SizedBox(
                height: 15,
              ),

              Padding(
                padding: EdgeInsets.all(
                  12
                ),
                child: Row(
                  children: [
                    Icon(
                      IcoFontIcons.coins,
                      color: Colors.white,
                      size: 30,
                    ),

                    SizedBox(
                      width: 20,
                    ),

                    Text(
                      'PAGAMENTOS',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),             
              ),

              SizedBox(
                height: 15,
              ),

              Padding(
                padding: EdgeInsets.all(
                  12
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.login_outlined,
                      color: Colors.white,
                      size: 30,
                    ),

                    SizedBox(
                      width: 20,
                    ),

                    Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),              
              )              
            ],
          )
        ],
      ),
    );
  }
}
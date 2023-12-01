// ignore_for_file: unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    List<Color> Clrs = [
      const Color.fromARGB(255, 246, 111, 58),
      const Color.fromARGB(255, 36, 131, 233),
      const Color.fromARGB(255, 63, 208, 143),
    ];

  var imageList = [
    "imagens/slide1.jpg",
    "imagens/slide3.jpg",
    "imagens/slide4.jpg",
  ];

  var iconImageList = [
    "imagens/icon1.jpg",
    "imagens/icon2.jpg",
    "imagens/icon3.jpg",
    "imagens/icon4.jpg",
    "imagens/icon5.jpg",
    "imagens/icon6.jpg",
    "imagens/icon7.jpg",
  ];

    return SingleChildScrollView(
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top:  20, left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding:  const EdgeInsets.all(10),
                  decoration:  BoxDecoration(
                    color:  const Color(0xFFD4ECF7),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        spreadRadius: 2,
                      )
                    ],
                  ),
                  child: const Icon(CupertinoIcons.cart, size: 28,),
                )
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
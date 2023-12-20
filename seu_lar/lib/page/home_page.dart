// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  var imageList = [
    "imagens/slide1.jpeg",
    "imagens/slide2.jpeg",
    "imagens/slide3.jpeg",
  ];

  var iconImageList = [
    "imagens/icon1.png",
    "imagens/icon2.png",
    "imagens/icon3.png",
    "imagens/icon4.png",
    "imagens/icon5.png",
    "imagans/icon6.png"

  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:const EdgeInsets.only(
              top: 50,
              left: 15,
              right: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(
                  padding:  const EdgeInsets.all(10),
                  decoration:  BoxDecoration(
                    color:  Colors.black,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.brown,
                        blurRadius: 4,
                        spreadRadius: 2,
                      )
                    ],
                  ),
                  child: const Icon(
                    CupertinoIcons.cart,
                    size: 28,
                    color: Colors.white,
                  ),
                ),

                const Text(
                  "YOUR HOME",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    textBaseline: TextBaseline.alphabetic
                  ),
                ),

                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black,                    
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.brown,
                        blurRadius: 4,
                        spreadRadius: 2,
                      )
                    ]
                  ),
                  child:const Icon(
                    CupertinoIcons.search,
                    size: 28,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),

          const Padding(
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: 15,
              vertical: 25,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                ),

                SizedBox(
                  height: 5,
                ),

                Text(
                  "Find your dream home!",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
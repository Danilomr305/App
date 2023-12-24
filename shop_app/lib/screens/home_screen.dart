// ignore_for_file: unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/grid_items.dart';

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
    "imagens/slide01.jpg",
    "imagens/slide03.jpg",
    "imagens/slide04.jpg",
  ];

  var iconImageList = [
    "imagens/icon01.jpg",
    "imagens/icon02.jpg",
    "imagens/icon03.jpg",
    "imagens/icon04.jpg",
    "imagens/icon05.jpg",
    "imagens/icon06.jpg",
    "imagens/icon07.jpg",
  ];

    return SingleChildScrollView(
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
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
                  child: const Icon(CupertinoIcons.cart, size: 28,),
                ),

                Container(
                  padding:  const EdgeInsets.all(10),
                  decoration:  BoxDecoration(
                    color:  const Color(0xFFD4ECF7),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        spreadRadius: 2,
                      )
                    ],
                  ),
                  child: const Icon(CupertinoIcons.search, size: 28,),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical:  25, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello Dear",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 5),

                Text(
                  "Lets shop something!",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black45,
                  ),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                for (int i = 0; i<3; i++)
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.height / 5.5,
                  decoration: BoxDecoration(
                    color: Clrs[i],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "30% off on Winter Collection",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22
                              ),
                            ),
                            Container(
                              width: 90,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Center(
                                child: Text(
                                  "Shop Now",
                                  style: TextStyle(
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Image.asset(
                        imageList[i],
                        height: 180,
                        width: 110,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          const SizedBox(
            height: 30,
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Categories",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),

                Text(
                  'See All',
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                )
              ],
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  for (var i = 0; i < 7; i++)
                  Container(
                    height: 55,
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0xFFD4ECF7),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(6),
                      child: Image.asset(iconImageList[i]),
                    ),
                  )
                ],
              ),
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          GridItems(),
        ],
      ),
    );
  }
}
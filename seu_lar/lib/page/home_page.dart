// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:line_icons/line_icon.dart';

import '../widgets/grid_widgets.dart';
import 'categories_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  var imageList = [
    "imagens/slide1.jpeg",
    "imagens/slide2.jpeg",
    "imagens/slide3.jpg",
  ];

  var iconImageList = [
    "imagens/icon1.png",
    "imagens/icon2.png",
    "imagens/icon3.png",
    "imagens/icon4.png",
    "imagens/icon5.png",
    "imagens/icon6.png"

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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                for (int i = 0; i<2; i++) 
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.height / 5.5,
                  decoration: BoxDecoration(
                    color: Colors.brown.shade400,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const  Text(
                              "30% off the Black Fridey Collection",
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white
                              ),
                            ),

                            Container(
                              width: 90,
                              margin:const EdgeInsets.all(10),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(22)
                              ),
                              child: const Center(
                                child: Text(
                                  "Shop Now",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                  ),
                                )
                              ),
                            )
                          ],
                        )
                      ),
                      Image.asset(
                        imageList[i],
                        height: 180,
                        width: 110,
                      )
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
            padding: EdgeInsets.symmetric(
              horizontal: 15
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Categories",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),

                Text(
                  "See All",
                  style: TextStyle(
                    color: Colors.black54
                  ),
                )
              ],
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  for (var i= 0; i < 6; i++)
                  Container(
                    height: 55,
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.brown.shade400,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 4,
                          spreadRadius: 2,
                        )
                      ]
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, 
                          MaterialPageRoute(
                              builder: (context) => const CategoriesPage()
                            )
                          );
                        },

                        child: Image.asset(
                          iconImageList[i]
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          GridWidets()
        ],
      ),
    );
  }
}
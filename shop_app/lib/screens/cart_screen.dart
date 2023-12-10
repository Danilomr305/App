// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, sized_box_for_whitespace, avoid_unnecessary_containers
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {

  var pNames = [
    "Apple Watch -M2",
    "Ear Headphone",
    "Nike Shoe",
    "White Tshirt",
  ];

  var pSizes = [
    "36",
    "M",
    "S",
    "40",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 55,
          left: 20,
          right: 20
        ),
        child: Column(
          children: [
            const Align(
              child: Text(
                "My Cart",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),

            const SizedBox(
              height: 40,
            ),

            for (int i = 0; i < 4; i++)
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 5,
              ),
              padding: const EdgeInsets.only(
                right: 10
              ),
              height: 120,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 248, 248, 248),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width / 4,
                    margin:const EdgeInsets.only(
                      left: 8
                    ),
                    decoration: BoxDecoration(
                      color: const Color(
                        0xFFD4ECF7
                      ),
                      borderRadius: BorderRadius.circular(
                        10
                      ),
                    ),
                    child: Image.asset(
                      "imagens/${pNames[i]}.jpg",
                      height: 70,
                      width: 70,
                    ),
                  ),

                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        top: 20,
                        bottom: 25
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            pNames[i],
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),
                          ),

                          Row(
                            children: [
                              const Text(
                                "Size:",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                                ),
                              ),

                              const SizedBox(
                                width: 5,
                              ),

                              Text(
                                pSizes[i],
                                style: const TextStyle(
                                  color: Colors.black54,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  const Spacer(),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "\$50.55",
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),

                      Container(
                        height: 25,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              CupertinoIcons.minus
                            ),

                            Text(
                              "01"
                            ),

                            Icon(
                              CupertinoIcons.plus
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18
                  ),
                ),

                Text(
                  "\$300",
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 22
                  ),
                )
              ],
            ),

            const SizedBox(
              height: 20,
            ),

            Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 2 * 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.redAccent,
              ),
              child: const Center(
                child: Text(
                  "Order Now",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
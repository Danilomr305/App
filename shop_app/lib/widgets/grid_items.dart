// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../screens/item_screen.dart';

class GridItems extends StatelessWidget {
  var pNames = [
    "Apple Watch -M2",
    "Ear Headphone",
    "Nike Shoe",
    "White Tshirt",
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pNames.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.7,
        crossAxisCount: 2
      ),
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xFFD4ECF7),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 4,
                spreadRadius: 2
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "30% 0ff",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.redAccent,
                    )
                  ],
                ),

                const SizedBox(
                  height: 10,
                ),
//-------------------------------------
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => const ItemScreen() 
                        ),
                      );
                    },
                    child: Image.asset(
                      "imagens/${pNames[index]}.jpg",
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
//-------------------------------------
                const SizedBox(
                  height: 15,
                ),

                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        pNames[index],
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black.withOpacity(0.8),
                          fontWeight: FontWeight.bold
                        ),
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                       Row(
                        children: [
                          const Text(
                            "\$100",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.redAccent,
                              fontWeight: FontWeight.w500
                            ),
                          ),

                          const SizedBox(
                            width: 5,
                          ),

                          Text(
                            "\$130",
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              fontSize: 13,
                              color: Colors.black.withOpacity(0.4)
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
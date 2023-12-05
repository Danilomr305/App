import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GridItems extends StatelessWidget {
  GridItems({super.key});

  var pNames = [
    "appleWatchM2",
    "WhiteTshirt",
    "NikeShoe",
    "EarHeadphone",
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pNames.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.7,
        crossAxisCount:  2,
      ),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {

          },
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color(0xFFD4ECF7),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                  spreadRadius: 2,
                )
              ]
            ),
            child:  Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "30% off",
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

                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: 
                    Image.asset(
                      "imagens/${pNames[index]}.png",
                      height: 100,
                      width: 100,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
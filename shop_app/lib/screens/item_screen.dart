// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../widgets/product_images_slider.dart';
// ignore: unused_import
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color(0xFFD4ECF7),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)
                )
              ),
              child:  Stack(
                children: [
                  const Center(
                    child: ProductImageslider(),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      top: 20,
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        size: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Apple Watch Series 6",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  Row(
                    children: [
                      RatingBar.builder(
                        initialRating: 3.5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 25,
                        itemBuilder: (context, index) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {}
                      ),
                      
                      const SizedBox(
                        width: 5,
                      ),
                      
                      const Text(
                        "(450)"
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 15,
                  ),

                  const Row(
                    children: [
                      Text(
                        "\$140",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),

                      SizedBox(
                        width: 5 ,
                      ),

                      Text(
                        "\$200",
                        style: TextStyle(
                          color: Colors.black45,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  const Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry's standard dummy text ever since the 1500s, when an unkonpwn printer took a galley of type and scrambled it to make a type speciem book",
                    style: TextStyle(
                      fontSize: 16
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ), 
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        margin: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () { },
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width / 1.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.redAccent,
                ),
                child: const Center(
                  child: Text(
                    "Add To Cart",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ),

            InkWell(
              onTap: () { },
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width / 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFD4ECF7),
                ),
                child: const Center(
                  child: Icon(
                    Icons.favorite_outline,
                    color: Colors.redAccent,
                    size: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
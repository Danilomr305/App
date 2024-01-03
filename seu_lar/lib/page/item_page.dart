// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, no_leading_underscores_for_local_identifiers

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seu_lar/widgets/product_images_widgets.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {

    Future<void> _dialogBuilder(BuildContext context) {
      return showDialog(
        context: context, 
        builder: (context) {
          return AlertDialog(
            title: const Text(
              "Basic dialog",
            ),
            content: const Text(
              "Parabéns"
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: TextButton.styleFrom(
                  textStyle: Theme.of(context).textTheme.labelLarge,
                ), 
                child: const Text(
                  "Confirma"
                ),
              ),
            ],
          );
        }
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: const  BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular (30),
                  bottomRight: Radius.circular (30)
                )
              ),
              child: Stack(
                children: [
                  const  Center(
                    child: ProductImagesPage(),
                  ),

                  Padding(
                    padding: const  EdgeInsets.only(
                      left: 15,
                      top: 10
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
                  )
                ]
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.all(10),
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
                        itemBuilder: (context, index) => const Icon(
                          Icons.star_border_outlined,
                          color: Colors.amber,
                        ), 
                        onRatingUpdate: (rating) {}
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      const Text(
                        '450'
                      ),
                    ],
                  ),

                  const SizedBox(
                        width: 5,
                      ),

                      const Row(
                        children: [
                          Text(
                            "\$150",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),

                          SizedBox(
                            width: 5,
                          ),

                          Text(
                            "\$200",
                            style: TextStyle(
                              color: Colors.black54,
                              decoration: TextDecoration.lineThrough
                            ),
                          ),
                ],
              ),

                  const SizedBox(
                        height: 20,
                      ),
                      
                      const Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type book",
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
           //----------------------
            InkWell(
              onTap: () => _dialogBuilder(context),
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width / 1.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black54,
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
                  color: Colors.black54
                ),
                child: const Center(
                  child: Icon(
                    Icons.favorite_outline,
                    color: Colors.white,
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
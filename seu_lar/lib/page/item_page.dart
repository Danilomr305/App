// ignore_for_file: unused_import, unnecessary_import, unused_local_variable

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
      
      bottomNavigationBar: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context, 
            builder: (context) => AlertDialog(
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  }, 
                  child: const Text('close'))
              ],
              title: const Text('Flutter Mapp'),
              contentPadding: const EdgeInsets.all(10.0),
              content: const Text('This is the Alert Dialog'),
            ),
          );
        },
        child: const Text('Show Alert Dialog'),
        ),
    );
  }
}
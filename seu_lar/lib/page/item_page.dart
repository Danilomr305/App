// ignore_for_file: unused_import, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:seu_lar/widgets/product_images_widgets.dart';


class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

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
                        size: 25,),
                    ),
                  )
                ]
              ),
            ),
          ],
        )
      ),
    );
  }
}
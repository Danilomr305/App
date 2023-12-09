import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ProductImageslider extends StatelessWidget {
  const ProductImageslider({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      indicatorColor: Colors.redAccent,
      indicatorBackgroundColor: Colors.white,
      autoPlayInterval: 3000,
      height: 300,
      indicatorRadius: 4,
      isLoop: true,
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Image.asset("imagens/p01.jpg"),
        ),

        Padding(
          padding: const EdgeInsets.all(8),
          child: Image.asset("imagens/p02.jpg"),
        ),

        Padding(
          padding: const EdgeInsets.all(8),
          child: Image.asset("imagens/p01.jpg"),
        ),

        Padding(
          padding: const EdgeInsets.all(8),
          child: Image.asset("imagens/p02.jpg"),
        ),
      ],
    );
  }
}
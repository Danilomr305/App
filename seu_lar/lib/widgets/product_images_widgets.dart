// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ProductImagesPage extends StatelessWidget {
  const ProductImagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      indicatorBackgroundColor: Colors.white,
      autoPlayInterval: 3000,
      height: 300,
      indicatorRadius: 4,
      isLoop: true,
      children: [ 
        Padding(
          padding: const EdgeInsets.all(10),
          child: Image.asset("imagens/Rack Com Painel.jpeg"),
        ),

        Padding(
          padding: const EdgeInsets.all(10),
          child: Image.asset("imagens/Bahamas Linho Gelo.jpeg"),
        ),

        Padding(
          padding: const EdgeInsets.all(10),
          child: Image.asset("imagens/Cozinha Preta.jpeg"),
        ),

        Padding(
          padding: const EdgeInsets.all(10),
          child: Image.asset("imagens/Poltrona Opala Pé Palito.jpeg"),
        ),

        Padding(
          padding: const EdgeInsets.all(10),
          child: Image.asset("imagens/Luminária LED"),
        )
      ],
    );
  }
}
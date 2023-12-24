// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridWidets extends StatelessWidget {
  
  var pNames = [
    "1 peça Luz de mesa",
    "Poltrona Pé Palito",
    "Cozinha Cinza",
    "1pc Adjustable Desk Lamp",
    "Accent Chairs",
    "Bahamas Linho Gelo",
    "Cama AMOR MARFIOSO",
    "Cama Articulada",
    "Cama Mônaco",
    "Cama Queen",
    "Cozinha Compacta Retro",
    "Cozinha Preta",
    "Cozinha verde",
    "Guarda Roupa Aberto Closet 4",
    "Guarda Roupa Mayra 8 Portas Preto Fosco",
    "Guarda Roupa Rústico",
    "Guarda roupas em L",
    "Guarda-Roupa Casal Veneza",
    "Guarda-roupa com espelho",
    "Guarda-roupa Dubai da Henn",
    "Luminária 1",
    "Luminária 2",
    "Luminária LED",
    "Poltrona Costela",
    "Poltrona Fauteuil Hugo",
    "Poltrona Opala Pé Palito",
    "Poltrona Pé Palito",
    "Poltrona vintage accogliente",
    "Rack Com Painel",
    "Rack para TV 75",
    "Rack Vivare Preto e Freijó",
    "Sala _ Apartamento RL",
    "Schlanke Tischlampe",
    "Sofá Beny Com Chaise Esquerdo Linho Cru",
    "Sofá Califórnia",
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pNames.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7
      ),
      itemBuilder: (context, index) {
        return Container(
          margin: const  EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.brown.shade100,
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 4,
                spreadRadius: 2,

              )
            ]
          ),
        );
      }
    );
  }
}
// ignore_for_file: sort_child_properties_last, avoid_print

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/moeda_models.dart';
import '../repository/moedas_repository.dart';

class MoedasPage extends StatefulWidget {
  const MoedasPage({super.key});

  @override
  State<MoedasPage> createState() => _MoedasPageState();
}

class _MoedasPageState extends State<MoedasPage> {

  NumberFormat real = NumberFormat.currency(
    locale: 'pt-br',
    name: 'R\$'
  );

  List<Moeda> selecionadas = [];
  
  final tabela  = MoedaRepository.tabela;

  @override
  Widget build(BuildContext context) {

  return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cripto Moedas',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int moeda){
          return ListTile(
            shape:  const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12)
              ),
            ),
            leading: (selecionadas.contains(tabela[moeda]))
            ? const CircleAvatar(
              child: Icon(Icons.check),
            )
            : SizedBox(
              child: Image.asset(tabela[moeda].icone),
              width: 40,
            ),
            title: Text(
              tabela[moeda].nome,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500
              ),
            ),
            trailing: Text(
              real.format(tabela[moeda].preco),
            ),
            selected: selecionadas.contains(tabela[moeda]),
            selectedColor: Colors.indigo,
            onLongPress: () {
              setState(() {
              (selecionadas.contains(tabela[moeda]))
                ? selecionadas.remove(tabela[moeda])
                : selecionadas.add(tabela[moeda]);
              });
            },
          );
        }, 
        padding: const EdgeInsets.all(16),
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: tabela.length,
      ),
    );
  }
}
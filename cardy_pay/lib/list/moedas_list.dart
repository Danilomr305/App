import 'package:cardy_pay/repositories/moeda_repository.dart';
import 'package:flutter/material.dart';

class ListMoedas extends StatefulWidget {
  const ListMoedas({super.key});

  @override
  State<ListMoedas> createState() => _ListMoedasState();
}

class _ListMoedasState extends State<ListMoedas> {
  @override
  Widget build(BuildContext context) {

    final tabela = MoedaRepository.tabela;

    return Scaffold(
      body: ListView.separated(
            itemBuilder: (BuildContext context, int moeda) {
              return ListTile(
                leading: Image.asset(tabela[moeda].nome),
                title: Text(tabela[moeda].nome),
                trailing: Text(tabela[moeda].preco.toString()),
              );
            }, 
            separatorBuilder: (_, __) => const Divider(), 
            itemCount: tabela.length,
      ),
    );
  }
}
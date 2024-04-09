import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../configs/app_settings.dart';
import '../repository/conta_repository.dart';

class HistoricoPage extends StatefulWidget {
  const HistoricoPage({super.key});

  @override
  State<HistoricoPage> createState() => _HistoricoPageState();
}

class _HistoricoPageState extends State<HistoricoPage> {

  double saldo = 0;
  late NumberFormat real;
  late ContaRepository conta;

  @override
  Widget build(BuildContext context) {
    conta = context.watch<ContaRepository>();
    final loc = context.read<AppSettings>().locale;
    real = NumberFormat.currency(locale: loc['locale'], name: loc['name']);
    saldo = conta.saldo;
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        centerTitle: WidgetsApp.debugAllowBannerOverride,
        title: const Text(
          'Historico',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
            color: Colors.white
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: loadHistorico(),
          )
        ],
      ),
    );
  }

  loadHistorico() {

    final historico = conta.historico;
    final date = DateFormat('dd/MM/yyyy - hh:mm');
    List<Widget> widgets = [];

    for (var  operacao in historico) {
      widgets.add(ListTile(
        title: Text(operacao.moeda.nome),
        subtitle: Text(date.format(operacao.dataOperacao)),
        trailing: 
        Text(real.format((operacao.moeda.preco * operacao.quantidade))),
      ));
      widgets.add( const Divider());
    }
    return Column(
      children: widgets,
    );
  }
}
// ignore_for_file: sized_box_for_whitespace, unnecessary_import
// ignore: unused_import
import 'package:fl_chart/fl_chart.dart';
import 'package:cardy_pay/configs/app_settings.dart';
import 'package:cardy_pay/repository/conta_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../models/posicao.dart';

class CarteiraPage extends StatefulWidget {
  
  const CarteiraPage({super.key});

  @override
  State<CarteiraPage> createState() => _CarteiraPageState();
}

class _CarteiraPageState extends State<CarteiraPage> {
  int index = 0;
  double totalCarteira = 0;
  double saldo = 0;
  late NumberFormat real;
  late ContaRepository conta;

  double graficoValor = 0;
  String graficoLabel = '';
  List<Posicao> carteira = [];
  
  @override
  Widget build(BuildContext context) {
    conta = context.watch<ContaRepository>();
    final loc = context.read<AppSettings>().locale;
    real = NumberFormat.currency(locale: loc['locale'], name: loc['name']);
    saldo = conta.saldo;

    setTotalCarteira();

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 48),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 48,bottom: 8),
                child: Text(
                  'Valor da Carteira',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Text(
                real.format(totalCarteira),
                style: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -1.5
                ),
              ),
              loadGrafico(),
            ],
          ),
        )
      ),
    );
  }

  setTotalCarteira() {
    final carteiraList = conta.carteira;
    setState(() {
      totalCarteira = conta.saldo;
      for (var posicao in carteiraList) {
        totalCarteira += posicao.moeda.preco * posicao.quantidade;
      }
    });
  }

  loadGrafico() {
    return Container(
      width: MediaQuery.of(context).size.width ,
      height: 200,
      child: const CircularProgressIndicator(),
    );
  }
}
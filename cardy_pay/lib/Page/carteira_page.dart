// ignore_for_file: sized_box_for_whitespace, unnecessary_import, unnecessary_string_escapes
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

  setGraficoDados(int index) {
    if (index < 0) return;

    if (index == carteira.length) {
      graficoLabel = 'Saldo';
      graficoValor = conta.saldo;
    } else {
      graficoLabel = carteira[index].moeda.nome;
      graficoValor = carteira[index].moeda.preco * carteira[index].quantidade;
    }
  }

  loadCarteira() {
    setGraficoDados(index);
    carteira = conta.carteira;
    final tamanhoLista = carteira.length + 1;

    return List.generate(tamanhoLista, (i){
      final isTouched = i == index;
      final isSaldo = i == tamanhoLista - 1;
      final fontSize = isTouched ? 18.0 : 14.0;
      final radius = isTouched ? 60.0 : 50.0;
      final color = isTouched ? Colors.indigo.shade700 : Colors.indigo.shade400;

      double porcentagem = 0;
      if (!isSaldo) {
        porcentagem = 
        carteira[i].moeda.preco * carteira[i].quantidade / totalCarteira;
      } else {
        porcentagem = (conta.saldo > 0) ? conta.saldo / totalCarteira : 0;
      }
      porcentagem *= 100;

      return PieChartSectionData(
        color: color,
        value: porcentagem,
        title: '${porcentagem.toStringAsFixed(0)}%',
        radius: radius,
        titleStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: Colors.white
        )
      );
    });
  }

  loadGrafico() {
    return (conta.saldo <= 0)
    ? Container(
      width: MediaQuery.of(context).size.width ,
      height: 200,
      child:const  Center(
        child: CircularProgressIndicator()
        ),
    )
    :
    Stack(
      alignment: Alignment.center,
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: PieChart(
            PieChartData(
              sectionsSpace: 5,
              centerSpaceRadius: 110,
              sections: loadCarteira(),
              pieTouchData: PieTouchData(
                touchCallback: (touch) => setState(() {
                  index = touch.touchedSection!.touchedSectionIndex;
                  setGraficoDados(index);
                }),
              )
            )
          ),
        ),
        Column(
          children: [
            Text(graficoLabel,
              style:const  TextStyle(
                fontSize: 20,
                color: Colors.teal
              ),
            ),
            
            Text(
              real.format(graficoValor),
              style:const TextStyle(
                fontSize: 28
              ),
            )
          ],
        )
      ],
    );
  }

  loadHistorico() {
    final historico = conta.historico;
    final date = DateFormat('dd\MM\yyyy - hh:mm');
    List<Widget> widgets = [];

    for (var  operacao in historico) {
      widgets.add(ListTile(
        title: Text(operacao.moeda.nome),
        subtitle: Text(date.format(operacao.dataOperacacao)),
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
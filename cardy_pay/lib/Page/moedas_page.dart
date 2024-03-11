// ignore_for_file: sort_child_properties_last, avoid_print

import 'package:cardy_pay/Page/moedas_detalhes.dart';
import 'package:cardy_pay/configs/app_settings.dart';
import 'package:cardy_pay/repository/favoritas_repository.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../models/moeda_models.dart';
import '../repository/moedas_repository.dart';

class MoedasPage extends StatefulWidget {
  const MoedasPage({super.key});

  @override
  State<MoedasPage> createState() => _MoedasPageState();
}

class _MoedasPageState extends State<MoedasPage> {

  late FavoritasRepository favoritas;
  late NumberFormat real;
  late Map<String, String> loc;
  List<Moeda> selecionadas = [];
  final tabela  = MoedaRepository.tabela;

  readNumberFormat() {
    loc = context.watch<AppSettings>().locale;
    real = NumberFormat.currency(locale: loc['locale'], name: loc['name']);
  }

  changeLanguagemButton() {
    final locale = loc['locale'] == 'pt_BR' ? 'en_US' : 'pt_BR';
    final name = loc['locale'] == 'pt_BR' ? '\$' : 'R\$';

    return PopupMenuButton(
      icon: const Icon(Icons.language),
      itemBuilder: (context) => [
        PopupMenuItem(
          child: ListTile(
            leading: const Icon(Icons.swap_vert_rounded),
            title: Text('Usar $locale'),
            onTap: () {
              context.read<AppSettings>().setLocale(locale, name);
              Navigator.pop(context);
            },
          )
        )
      ]
    );
  }

  appBarDinamica() {
    if (selecionadas.isEmpty) {
      return AppBar(
        backgroundColor: Colors.black87,
        title: const Text(
          'Cripto Moedas',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
        actions: [
          changeLanguagemButton()
        ],
      );
    } else {
      return AppBar(
        leading: IconButton(
          onPressed: () {
            setState(() {
              selecionadas = [];
            });
          }, 
          icon: const Icon(Icons.arrow_back)
        ),
        title: Text('${selecionadas.length} selecionadas',
        style: const TextStyle(
          color: Colors.white
        ),
        ),
        backgroundColor: Colors.indigo,
        elevation: 1,
        iconTheme: const IconThemeData(color: Colors.black87),
      );
    }
  }

  mostrarDelalhes(Moeda moeda) {
    Navigator.push(context, MaterialPageRoute(
      builder: (_) => MoedasDetalhesPage(moeda: moeda),
      )
    );
  } 

  // ignore: non_constant_identifier_names
  LimparSelecionadas() {
    setState(() {
      selecionadas = [];
    });
  }

  @override
  Widget build(BuildContext context) {

    favoritas = Provider.of<FavoritasRepository>(context);
    readNumberFormat();

  return Scaffold(
      appBar: appBarDinamica(),
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
            title: Row(
              children: [
                Text(
                  tabela[moeda].nome,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500
                  ),
                ),
                if(favoritas.lista.contains(tabela[moeda]))
                const Icon(Icons.star, color: Colors.amber, size: 18,)
              ],
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
            onTap: () => mostrarDelalhes(tabela[moeda])
          );
        }, 
        padding: const EdgeInsets.all(16),
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: tabela.length,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: selecionadas.isNotEmpty
        ? FloatingActionButton.extended(
          onPressed: () {
            favoritas.saveAll(selecionadas);
            LimparSelecionadas();
          },
          icon:
          const Icon(
            Icons.star,
            color: Colors.white
          ),
          label: const Text('FAVORITAR',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 0,

          ),),
          backgroundColor: Colors.black,
          )
        : null,
    );
  }
}
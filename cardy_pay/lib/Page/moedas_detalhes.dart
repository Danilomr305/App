import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/moeda_models.dart';

// ignore: must_be_immutable
class MoedasDetalhesPage extends StatefulWidget {
  Moeda moeda;

  MoedasDetalhesPage({Key? key, required this.moeda}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MoedasDetalhesPageState createState() => _MoedasDetalhesPageState();
}

class _MoedasDetalhesPageState extends State<MoedasDetalhesPage> {

  final _form = GlobalKey<FormState> ();
  final _valor = TextEditingController();

  NumberFormat real = NumberFormat.currency(locale: 'pt_BR', name: 'R\$');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.moeda.nome),
      ),
      body: Column(
        children: [
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 50,
                  child: Image.asset(widget.moeda.icone)
                ),
                Container(width: 10),
                Text(
                  real.format(widget.moeda.preco),
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -1,
                    color: Colors.grey.shade800
                  ),
                )
              ],
            ),
          ),

          const SizedBox(
            height: 15,
          ),

          SizedBox(
            height: 55,
            width: 350,
            child: Form(
              key: _form,
              child: TextFormField(
                controller: _valor,
                style: const TextStyle(fontSize: 22),
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Valor',
                    prefixIcon: Icon(Icons.monetization_on_outlined)
                ),
              )
            ),
          )
        ],
      ),
    );
  }
}
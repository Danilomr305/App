// ignore_for_file: avoid_unnecessary_containers, use_build_context_synchronously

import 'package:cardy_pay/configs/app_settings.dart';
import 'package:cardy_pay/repository/conta_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../models/moeda_models.dart';
// ignore: unused_import
import 'package:icofont_flutter/icofont_flutter.dart';

// ignore: must_be_immutable
class MoedasDetalhesPage extends StatefulWidget {
  Moeda moeda;

  MoedasDetalhesPage({super.key, required this.moeda});

  @override
  // ignore: library_private_types_in_public_api
  _MoedasDetalhesPageState createState() => _MoedasDetalhesPageState();
}

class _MoedasDetalhesPageState extends State<MoedasDetalhesPage> {
  final _form = GlobalKey<FormState> ();
  final _valor = TextEditingController();
  double quantidade = 0;
  NumberFormat real = NumberFormat.currency(locale: 'pt_BR', name: 'R\$');
  late ContaRepository conta;

  comprar() async {
    if(_form.currentState!.validate()) {
      
      await conta.comprar(widget.moeda, double.parse(_valor.text));
      
      Navigator.pop(context);

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: 
          Text('Comprar realizada com sucesso!',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.white,
          ),
          )
        )
      );

    }
  }

  @override
  Widget build(BuildContext context) {
    realNumberFormat();
    conta = Provider.of<ContaRepository>(context, listen: false);
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
                Image.network(
                  widget.moeda.icone,
                  scale: 2.5,
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

          (quantidade > 0)

          ?

          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.teal.withOpacity(0.05)
              ),
              margin: const EdgeInsets.only(
                bottom: 10
              ),
              child: Text('$quantidade ${widget.moeda.sigla}',
              style: const 
                TextStyle(
                  fontSize: 20,
                  color: Colors.teal
                ),
             ),
             
            ),
          )

          : Container(
            margin: const EdgeInsets.only(bottom: 24),
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
                    prefixIcon: Icon(Icons.monetization_on_outlined),
                    suffix: Text(
                      'reais',
                      style: TextStyle(
                        fontSize: 14
                      ),
                    ),
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly
                ],
                validator: (value) {
                  if(value!.isEmpty){
                    return "Informe o valor da compra";
                  } else if (double.parse(value) < 50) {
                    return "Comprar minina é R\$ 50,00";
                  } else if (double.parse(value) > conta.saldo ) {
                    return "Você não tem saldo suficiente!";
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    quantidade = (value.isEmpty)
                    ? 0
                    : double.parse(value) / widget.moeda.preco;
                  });
                },
              ),
            ),     
          ),
          Container(
            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.only(top: 10),
            child: ElevatedButton(
              onPressed: () {
                comprar();
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Icon(
                      Icons.cake_sharp
                    ),
                    Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'Comprar',
                      style: TextStyle(
                        fontSize: 20
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  realNumberFormat() {
    final loc = context.watch<AppSettings>().locale;
    real = NumberFormat.currency(locale: loc['locale'],name: loc['name']);
  }
}

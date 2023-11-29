import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../models/time.dart';
import '../models/titulo.dart';
import '../repository/times_repository.dart';


// ignore: must_be_immutable
class AddTituloPage extends StatefulWidget {
  Time time;
  AddTituloPage({
    Key? key,
    required this.time, 
  }) : super(key: key);

  @override
  State<AddTituloPage> createState() => _AddTituloPageState();
}

class _AddTituloPageState extends State<AddTituloPage> {
  
  final _campenato = TextEditingController();
  final _ano = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  save() {
    Provider.of<TimesRepository>(context, listen: false).addTitulo(
      time: widget.time, 
      titulo: Titulo(
        campeonato: _campenato.text,
        ano: _ano.text, 
        id: 1,
      ),
    );
    

    Get.back();
    
    Navigator.pop(context);

   Get.snackbar('Sucesso!', 'Titulo cadastrado!', 
   backgroundColor: Colors.grey.shade900,
   colorText: Colors.white,
   snackPosition: SnackPosition.BOTTOM,
   );
  }  
         
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adicionando Titulo'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(padding: const EdgeInsets.all(24),
            child: TextFormField(
              controller: _ano,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Ano',
              ),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Informe o ano do titulo!';
                }
                return null;
              },
            ),
            ),
            Padding(padding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 24),
            child: TextFormField(
              controller: _campenato,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Campeonato',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Informe qual é o campeonato!';
                }
                return null;
              },
            ),
          ),
          Expanded(
            child: 
              Container(
                alignment: Alignment.bottomCenter,
                margin: const EdgeInsets.all(24.0),
                child: 
                ElevatedButton(
                  onPressed: (){
                    if(_formKey.currentState!.validate()) {
                      save();
                    }
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Icon(
                      Icons.check
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text('Salvar',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w900,
                        fontFamily: AutofillHints.sublocality
                      )),
                    ),
                    
                  ]),
                ),
              )
          ),
          ],
        ),
      ),
    );
  }
}
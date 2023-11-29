import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../models/time.dart';
import '../repository/times_repository.dart';
import '../widgets/brasao.dart';
import 'add_titulo_page.dart';
import 'edit_titulo_page.dart';

// ignore: must_be_immutable
class TimePage extends StatefulWidget {
  Time time;
  
  // ignore: prefer_typing_uninitialized_variables
  TimePage({
    Key? key,
    required this.time,
  }) : super(key: key);
  

  @override
  State<TimePage> createState() => _TimePageState();
}

class _TimePageState extends State<TimePage> {
  tituloPage() {
    Get.to(() => AddTituloPage(time: widget.time),);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold( 
        appBar: AppBar(
          backgroundColor: widget.time.cor,
          title: Text(widget.time.nome),
          actions: [IconButton(icon: const Icon(Icons.add),onPressed: tituloPage)],
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.stacked_line_chart),
              text: 'Estatisticas',
            ),
            Tab(
              icon: Icon(Icons.emoji_events),
              text: 'Titulos',
            ),
          ],
          indicatorColor: Colors.white,
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Brasao(
                    image: widget.time.brasao,
                    width: 250,
                  ),
                ),
                Text(
                  'Pontos: ${widget.time.pontos}',
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700)
                ),
              ],             
            ),
            titulos()
          ]),
      ),
    ); 
  }
  Widget titulos() {

    final time = Provider.of<TimesRepository>(context)
    .times.
    firstWhere((t) => t.nome == widget.time.nome);

    final quantidade = time.titulo.length;

    return quantidade == 0
           // ignore: avoid_unnecessary_containers
           ? Container(
            child:  const Center(
              child: Text('Nenhum Titulo Ainda!'),
              ),
            )
          : ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return  ListTile(
                leading: const Icon(Icons.emoji_events_outlined),
                title: Text(time.titulo[index].campeonato),
                trailing: Text(time.titulo[index].ano),
                onTap: () {
                  Get.to(
                    EditTituloPage(titulo: time.titulo[index]),
                    fullscreenDialog: true,
                  );
                },
              );
            },  
            separatorBuilder: (_,__) => const Divider(), 
            itemCount: quantidade
          );
  }   
}
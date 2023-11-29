import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../models/time.dart';
import '../repository/times_repository.dart';
import '../widgets/brasao.dart';



// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var controller = ThemeController.to;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Brasileirão',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w900,
            fontFamily: AutofillHints.birthday,
          ),
        ),
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert_outlined),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: ListTile(
                  leading: Obx(() => controller.IsDart.value
                  ? const Icon(Icons.brightness_7_outlined)
                  : const Icon(Icons.brightness_2_outlined),),
                title: Obx(() => 
                controller.IsDart.value ? const Text('Ligth') : const Text('Dark')),
                onTap: () => controller.changeTheme(),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Consumer<TimesRepository>(
        builder: (context, repositorio, child){
          return ListView.separated(
          itemCount: repositorio.times.length,
          itemBuilder: (BuildContext context, int time) {
            final List<Time> tabela = repositorio.times;
            return ListTile(
              leading: Brasao(
                image: tabela[time].brasao,
                width:40,
              ),
              title: Text(tabela[time].nome),
              trailing: Text(
                tabela[time].pontos.toString(),
              ),
              subtitle: Text('Titulos: ${tabela[time].titulo.length}'),
              onTap: () {
                Get.to(() => TimePage(
                    key: Key(tabela[time].nome),
                    time: tabela[time],
                  ),
                );

              },
            );
          },
          separatorBuilder: (_, __) => const Divider(),
          padding: const EdgeInsets.all(16),
        );
        },
      )
    );
  }
}
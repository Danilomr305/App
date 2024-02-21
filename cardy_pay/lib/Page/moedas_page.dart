// ignore_for_file: unused_import, unused_local_variable

import 'package:cardy_pay/list/moedas_list.dart';
import 'package:cardy_pay/repositories/moeda_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';

import '../widgets/grid_widgets.dart';

class MoedasPage extends StatefulWidget {
  const MoedasPage({super.key});

  @override
  State<MoedasPage> createState() => _MoedasPageState();
}

class _MoedasPageState extends State<MoedasPage> {
  @override
  Widget build(BuildContext context) {

   final tabela = MoedaRepository.tabela;

    return SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 8, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.white54,
                  child: const Text(
                    'Welcome, Dnl!',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                const Icon(
                  CupertinoIcons.bell,
                  size: 37,
                )
              ],
            ),
          ),

          const SizedBox(
            height: 10,
          ),

            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "\$ 13,553.00",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Balance",
                    style: TextStyle(color: Colors.black26, fontSize: 15),
                  )
                ],
              ),
            ),

          const SizedBox(
            height: 30,
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                          for (int i = 0; i<1; i++)
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            padding: const EdgeInsets.only(left: 10),
                            width: MediaQuery.of(context).size.width / 2.4,
                            height: MediaQuery.of(context).size.height / 8.8,
                            decoration: BoxDecoration(
                              color: Colors.black45,
                                borderRadius: BorderRadius.circular(10)
                            ),
                                      child: const Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Positions",
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black54,
                                                  ),
                                                ),
                                                
                                                Text(
                                                  "\$13553.00",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20
                                                  ),
                                                )
                                              ],
                                            ),
                                ), 
                          
                                Icon(
                                  Icons.arrow_forward_ios_outlined
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                          for (int i = 0; i<1; i++)
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            padding: const EdgeInsets.only(left: 10),
                            width: MediaQuery.of(context).size.width / 2.4,
                            height: MediaQuery.of(context).size.height / 8.8,
                            decoration: BoxDecoration(
                              color: Colors.black45,
                                borderRadius: BorderRadius.circular(10)
                            ),
                                      child: const Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Cash",
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black54,
                                                  ),
                                                ),
                                                
                                                Text(
                                                  "\$2250.00",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20
                                                  ),
                                                )
                                              ],
                                            ),
                                ), 
                          
                                Icon(
                                  Icons.arrow_forward_ios_outlined
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                ],
              )
            ]
          )
          ,

          const SizedBox(
            height: 30,
          ),

          const Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Token Bonus',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),
                    ),
              
                    SizedBox(
                      width: 10,
                    ),
              
                    Text(
                      'Today',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        backgroundColor: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(
            height: 10,
          ),

          const GridWidets(),

          const SizedBox(
            height: 20,
          ),

          /*Expanded(
            flex: 2,
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int moeda) {
              return ListTile(
                leading: Image.asset(tabela[moeda].nome),
                title: Text(tabela[moeda].nome),
                trailing: Text(tabela[moeda].preco.toString()),
              );
            }, 
            separatorBuilder: (_,__) => const Divider(), 
            itemCount: 15,
                          ),
          ),*/

          const ListMoedas()
          ] 
        )
    );
  }
}

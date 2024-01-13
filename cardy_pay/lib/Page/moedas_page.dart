
// ignore_for_file: unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';

class MoedasPage extends StatefulWidget {
  const MoedasPage({super.key});

  @override
  State<MoedasPage> createState() => _MoedasPageState();
}

class _MoedasPageState extends State<MoedasPage> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: 
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 40,
                  left: 8,
                  right: 8

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.white54,
                      child:const Text(
                        'Welcome, Dnl!',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),

                    const Icon(
                      CupertinoIcons.bell,
                      size: 45,
                    )
                  ],
                ),
              ),

          const SizedBox(
            height: 10,
          ),

          const Padding(
            padding: EdgeInsets.only(
              left: 20
            ),
            child:  Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "\$ 13,553.00",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40
                  ),
                ),
          
                SizedBox(
                  width:8,
                ),
          
                Text(
                  "Balance",
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 15
                  ),
                )
              ],
            ),
          ),



          const SizedBox(
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10
            ),
            child: Row(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      for (int i = 0; i<1; i++)
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.only(left: 10),
                        width: MediaQuery.of(context).size.width / 2.4,
                        height: MediaQuery.of(context).size.height / 8.8,
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Positions"
                                 ),

                                 

                                 
                                  Icon(
                                    Icons.arrow_forward_ios_outlined
                                   ),
                                 
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
          
                const SizedBox(
                  width: 1,
                ),
          
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      for (int i = 0; i<1; i++)
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.only(left: 10),
                        width: MediaQuery.of(context).size.width / 2.4,
                        height: MediaQuery.of(context).size.height / 8.8,
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(10)
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]
      ),
    );
  }
}
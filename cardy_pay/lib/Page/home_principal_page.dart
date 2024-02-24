import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:line_icons/line_icon.dart';

import '../widgets/grid_widgets.dart';

class HomePrincipal extends StatefulWidget {
  const HomePrincipal({super.key});

  @override
  State<HomePrincipal> createState() => _HomePrincipalState();
}

class _HomePrincipalState extends State<HomePrincipal> {
  @override
  Widget build(BuildContext context) {
    
    return SingleChildScrollView(
  child: Card(
    child: Column(
      children: [
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
          height: 5,
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
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width / 2.4,
                  height: MediaQuery.of(context).size.height / 8.8,
                  decoration: BoxDecoration(
                      color: Colors.black45, borderRadius: BorderRadius.circular(10)),
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
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_outlined),
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width / 2.4,
                  height: MediaQuery.of(context).size.height / 8.8,
                  decoration: BoxDecoration(
                      color: Colors.black45, borderRadius: BorderRadius.circular(10)),
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
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_outlined),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding:  EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Token Bonus',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
          height: 5,
        ),
  
        const GridWidets()
      ],
    ),
  ),
);
  }}
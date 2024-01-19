import 'package:flutter/material.dart';

class GridWidets extends StatefulWidget {
  const GridWidets({super.key});

  @override
  State<GridWidets> createState() => _GridWidetsState();
}

class _GridWidetsState extends State<GridWidets> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      for (int i = 0; i<1; i++)
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.only(left: 10),
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.height / 2.5,
                        decoration: BoxDecoration(
                          color: Colors.black,
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
                                      color: Colors.white,
                                    ),
                                   ),
                                  
                                  Icon(
                                    Icons.access_time_filled_outlined,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ), 
                          ],
                        ),
                      ),
                    
                const SizedBox(
                  width: 12,
                ),

                Column(
                  children: [
                    SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              for (int i = 0; i<1; i++)
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                padding: const EdgeInsets.only(left: 10),
                                width: MediaQuery.of(context).size.width / 2.5,
                                height: MediaQuery.of(context).size.height / 5.3,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
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

                                          Icon(
                                            Icons.inbox_outlined,
                                            color: Colors.white,

                                          ),
                                           
                                          Text(
                                            "Bonus received",
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                            ),
                                           ),
                                          
                                          Text(
                                            "\$122.00",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 20
                                            ),
                                          )
                                          
                                        ],
                                      ),
                                    ), 
                                  ],
                                ),
                              )
                            ],
                          ),
                    ),

                    const SizedBox(
                      height: 18,
                    ),

                    SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              for (int i = 0; i<1; i++)
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                padding: const EdgeInsets.only(left: 10),
                                width: MediaQuery.of(context).size.width / 2.5,
                                height: MediaQuery.of(context).size.height / 5.3,
                                decoration: BoxDecoration(
                                  color: Colors.black,
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

                                          Icon(
                                            Icons.inbox_outlined,
                                            color: Colors.white,

                                          ),
                                           
                                          Text(
                                            "Bonus received",
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                            ),
                                           ),
                                          
                                          Text(
                                            "\$122.00",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 20
                                            ),
                                          )
                                        ],
                                      ),
                                    ), 
                                  ],
                                ),
                              )
                            ],
                          ),
                    ),
                  ],
                ),

              ]                 
            ),
    );
  } 
}
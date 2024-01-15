/*import 'package:flutter/cupertino.dart';

class GridWidets extends StatefulWidget {
  const GridWidets({super.key});

  @override
  State<GridWidets> createState() => _GridWidetsState();
}

class _GridWidetsState extends State<GridWidets> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder(
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
                    
                const SizedBox(
                  width: 1,
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
                                    "Positions",
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
    );
  }
  for (int i = 0; i<1; i++) 
}*/
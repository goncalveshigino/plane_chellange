import 'package:flutter/material.dart';

import 'components/components.dart';

class TicketFromPage extends StatelessWidget {
  const TicketFromPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 245, 245),
      body: Column(
        children: [

          Stack(
            children: [

              Container(
                height: size.height * 0.35,
                color: const Color.fromARGB(255, 59, 85, 59),
                child: Image.asset('assets/img/map.png', color: Colors.grey,),
              ),
              CardFromTo(size: size),
              const Positioned(
                top: 247,
                right: 80,
                child: Text(
                  'Round Trip  Multi - City',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ),
              Positioned(
                top: 340,
                right: 90,
                child: ClipOval(
                  child: Transform.rotate(
                    angle: -0.5,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 203, 132, 25),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 203, 132, 25),
                                blurRadius: 40)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(1),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.arrow_downward,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.arrow_upward,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                top: 110,
                left: 120,
                child: Image.asset('assets/img/fli2.png', height: 30,),
              ),

            
                const Positioned(
                top: 65,
                left: 20,
                child: Text(
                  "Let's Book Your\nFlight",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: 65,
                right: 20,
                child: ClipOval(
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      'assets/img/luiz.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top: 30, left: 25),
            child: Row(
              children: [
                const Text(
                  'Sort By',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                ),
                const SizedBox(width: 30),
                Container(
                  height: 43,
                  width: 160,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text('Highest Price'),
                      ),
                      SizedBox(width: 15),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Color.fromARGB(255, 203, 132, 25),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),

          Stack(
            children: [

              Padding(
                padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
                child: Container(
                  height: 320,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)),
                  child: Column(
                    children: [
                      Container(
                        height: size.height * 0.20,
                        margin: const EdgeInsets.only(
                            left: 20, right: 20, top: 20, bottom: 15),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 26, 162, 155),
                            borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Row(
                          children: const [
                            Text(
                              'Flight   Yogyakarta',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 110),
                            Text(
                              'HJB - JKM',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 25, top: 2, right: 25),
                        child: Divider(),
                      ),

                      Padding(
                        padding: const EdgeInsets.only( left: 25, top: 20),
                        child: Row(
                          children: const [
                      
                            Icon(
                              Icons.watch_later_outlined,
                              color: Color.fromARGB(255, 26, 162, 155),
                            ), 

                            SizedBox( width: 10 ),

                            Text(
                              '10:00 AM - 12:00 PM', 
                              style: TextStyle(
                              fontSize: 14, 
                              color: Colors.grey,
                              fontWeight: FontWeight.w500
                            ),
                           ),
                          
                          SizedBox(width: 30 ),

                           Text(
                            'Book Now', 
                             style: TextStyle(
                              fontSize: 18, 
                              color: Color.fromARGB(255, 203, 132, 25),
                              fontWeight: FontWeight.bold
                            )
                           ),

                            SizedBox(width: 10 ),

                           Icon( Icons.arrow_right, color: Color.fromARGB(255, 203, 132, 25), size: 30,)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),

               Positioned(
                top: 90,
                left: 80,
                child: Image.asset('assets/img/pfli.png', height: 130,),
                ),

                Positioned(
                  top: 57, 
                  left: 80,
                  child: Container(
                    height: 40, 
                    width: 80, 
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 59, 85, 59),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: const Center(
                      child: Text(
                        "AOA 150", 
                        style: TextStyle(
                          fontSize: 15, 
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ), 

                

                
            ],
          ),
        ],
      ),
    );
  }
}

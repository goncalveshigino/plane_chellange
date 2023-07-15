import 'package:flutter/material.dart';

class PlaneDetails extends StatelessWidget {
  const PlaneDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [


        Padding(
             padding: const EdgeInsets.only(top: 5, left: 25, right: 25),
             child: Container(
               height: 370,
               decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(40),
                 ),
                 child: Column(
                   children: [

                   const SizedBox(
                      height: 245, 
                   ),

                   Padding(
                     padding: const EdgeInsets.only(left: 25, top: 10),
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
                     padding: EdgeInsets.only(left: 25, top: 10, right: 25),
                     child: Divider(),
                   ),

                   Padding(
                     padding: const EdgeInsets.only( left: 25, top: 20),
                     child: Row(
                       children: const [
                   
                         Icon(
                           Icons.punch_clock_outlined,
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
                         'Details', 
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
             top: 38, 
             right: 47,
             child: Image.asset(
               'assets/img/fli3.png', 
               height: 210,
             ),
           ),


           Positioned(
           top: 50, 
           left: 50,
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
         )


      ],
    );
  }
}


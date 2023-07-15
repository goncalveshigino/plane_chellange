
import 'package:flutter/material.dart';

class SeatNumber extends StatelessWidget {

 final String text;
 final String text1;


  const SeatNumber({
    Key? key,
    required this.text,
    required this.text1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
     children:  [

       Text(
         text, 
         style: const TextStyle(
           color: Colors.grey, 
           fontSize: 15
         ),
       ), 
       Text(
         text1, 
         style: const TextStyle(
           fontSize: 15,
           fontWeight: FontWeight.bold
         ),
       )
      
     ],
    );
  }
}

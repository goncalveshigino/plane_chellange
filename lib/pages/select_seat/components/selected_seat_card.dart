import 'package:flutter/material.dart';
import 'components.dart';

class SeletedSeatCard extends StatelessWidget {
  const SeletedSeatCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, top: 25),
      child: Column(
        children: [

          Row(
            children: const [
              CardSeat(
                color: Color.fromARGB(255, 203, 132, 25),
                text: Text('A1', style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
              ),

              CardSeat(
                text: Text('A2', style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold),),
              ),

            ],
          ),

          const SizedBox( height: 15,),

           Row(
            children: const [
              CardSeat(
                text: Text('A1', style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold),),
              ),

              CardSeat(
                text: Text('A2', style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold),),
              ),

            ],
          ),
          const SizedBox( height: 15,),
       
           Row(
            children: const [
              CardSeat(
                text: Text('A1', style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold ),),
              ),

              CardSeat(
                color: Color.fromARGB(255, 57, 78, 57),
                text: Text('A2', style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white ),),
              ),

            ],
          ),
        ],
      ),
    );
  }
}

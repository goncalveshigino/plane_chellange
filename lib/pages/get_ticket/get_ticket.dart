import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../type_of_ticket/components/custom_paint_partida.dart';

class GetTicket extends StatelessWidget {
  const GetTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 59, 85, 59),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 90, left: 25),
                child: Text(
                  'Find And Book\nA Great Exprience',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 29,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25, top: 20),
                child: Text(
                  'Going forward after a pandemic that\n devastated the airline industry',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
            ],
          ),
          const Positioned(
              bottom: 430,
              right: 57,
              child: CustomArcor(color: Color.fromARGB(255, 203, 132, 25))),
          Positioned(
            top: 420,
            right: 150,
            child: ClipOval(
              child: Container(
                height: 8,
                width: 8,
                color: const Color.fromARGB(255, 203, 132, 25),
              ),
            ),
          ),
          Positioned(
            top: 270,
            left: 33,
            child: GestureDetector(
              onTap: () {
                context.push('/type_ticket');
              },
              child: Container(
                height: 70,
                width: 190,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 203, 132, 25),
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                    child: Text(
                  'Get Tickets',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 17),
                )),
              ),
            ),
          ),
          Positioned(
              top: 370,
              right: 20,
              child: Image.asset(
                'assets/img/map.png',
                color: Colors.grey,
                fit: BoxFit.cover,
              )),
          Positioned(
              bottom: 59,
              right: 50,
              child: Image.asset(
                'assets/img/travel.png',
                height: 470,
              )),
          Positioned(
              bottom: 480,
              right: 40,
              child: Image.asset(
                'assets/img/fli.png',
                height: 40,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}

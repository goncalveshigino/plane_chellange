import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:plane_chellange/config/colors/colors.dart';

import '../type_of_ticket/components/custom_paint_partida.dart';

class GetTicket extends StatelessWidget {
  const GetTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorGreen,
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
              child: CustomArcor(color: colorOrange)),
          Positioned(
            top: 420,
            right: 150,
            child: ClipOval(
              child: Container(
                height: 8,
                width: 8,
                color:  colorOrange,
              ),
            ),
          ),
          Positioned(
            top: 270,
            left: 33,
            child: GestureDetector(
              onTap: () {
                context.push('/ticket_from');
              },
              child: Container(
                height: 70,
                width: 190,
                decoration: BoxDecoration(
                    color:  colorOrange,
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
                  color: Colors.grey.shade600,
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

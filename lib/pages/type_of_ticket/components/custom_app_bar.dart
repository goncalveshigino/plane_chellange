import 'package:flutter/material.dart';
import 'package:plane_chellange/config/colors/colors.dart';
import 'custom_paint_partida.dart';



class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Container(
          color: colorGreen,
          height: 220,
        ),
        Image.asset('assets/img/map.png', color: Colors.grey.shade600,),
        const Positioned(
          top: 45,
          left: 20,
          child: Text(
            'Booking Your\nFlight',
            style: TextStyle(
              fontSize: 35,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          top: 35,
          right: 20,
          child: ClipOval(
            child: SizedBox(
              height: 60,
              width: 60,
              child: Image.asset(
                'assets/img/luiz.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 40,
          left: 30,
          child: Row(
            children: [
              
              const Text(
                'One Way',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              const SizedBox(width: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Round Trip',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Container(
                    height: 2,
                    width: 40,
                    color: colorOrange,
                  )
                ],
              ),
            ],
          ),
        ),
         const Positioned(
          top: 110, 
          left: 230,
          child: CustomArcor(color: colorOrange)
         ),
         Positioned(
            bottom: 55,
            right: 58,
            child: Image.asset(
              'assets/img/fli.png', 
              height: 40, 
              width: 40, 
              color: Colors.white,
            ),
          ),
        Positioned(
          bottom: 85,
          left: 245,
          child: ClipOval(
            child: Container(
              height: 12,
              width: 12,
              color: colorOrange,
            ),
          ),
        )
      ],
    );
  }
}

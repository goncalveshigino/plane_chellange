import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:plane_chellange/config/colors/colors.dart';

import '../../widgets/widgets.dart';

class CardDetailsRecent extends StatelessWidget {
  final String image;
  final String text1;
  final String text2;
  final String text3;
  final String text4;

  const CardDetailsRecent({
    Key? key,
    required this.image,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('/ticket_from');
      },
      child: Container(
        height: 140,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Image.asset(
                image,
                height: 80,
                width: 80,
              ),
            ),
            const SizedBox(width: 20),
            CardInfo(
              text1: 'Departure',
              text2: Text(
                text1,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              text3: 'Estimate',
              text4: Text(
                text2,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 26, 162, 155)),
              ),
            ),
            const SizedBox(width: 55),
            CardInfo(
              text1: 'Arrive',
              text2: Text(
                text3,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              text3: 'Price',
              text4: Text(
                text4,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: colorOrange),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

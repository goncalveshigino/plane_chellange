import 'package:flutter/material.dart';
import 'package:plane_chellange/config/colors/colors.dart';

import 'components.dart';

class CardFromTo extends StatelessWidget {
  const CardFromTo({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.28,
      margin: const EdgeInsets.only(top: 210, left: 30, right: 30),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 50,
              width: 325,
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(22),
              ),
              child: Container(
                width: 40,
                margin: const EdgeInsets.only(right: 200),
                decoration: BoxDecoration(
                  color: colorGreenLi,
                  borderRadius: BorderRadius.circular(22),
                ),
                child: const Center(
                    child: Text(
                  'One way',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )),
              ),
            ),
          ),
          const FromToPage(
            text1: 'From',
            text2: 'London, NCD',
            image: 'assets/img/fli.png',
            color: colorOrange,
          ),
          const SizedBox(height: 15),
          const FromToPage(
            text1: 'To',
            text2: 'Barstow, BSW',
            image: 'assets/img/flig.png',
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}


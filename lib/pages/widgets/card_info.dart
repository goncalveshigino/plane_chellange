

import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget {

  final String text1;
  final Text text2;
  final String text3;
  final Text text4;

  const CardInfo({
    Key? key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(
          text1,
          style: const TextStyle(color: Colors.grey),
        ),

       text2,

        const SizedBox(height: 15),
        Text(
          text3,
          style: const TextStyle(color: Colors.grey),
        ),
        
        text4,
      ],
    );
  }
}
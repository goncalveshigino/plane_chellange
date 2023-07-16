

import 'package:flutter/material.dart';

class CustomCheck extends StatelessWidget {
  final String text;
  final Decoration decoration;

  const CustomCheck({
    super.key,
    required this.text,
    required this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20, right: 10),
          child: Container(height: 25, width: 25, decoration: decoration),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        //Checkbox(value: , onChanged: )
      ],
    );
  }
}
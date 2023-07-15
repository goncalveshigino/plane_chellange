

import 'package:flutter/material.dart';

class Cabin extends StatelessWidget {
  
  final String text;
  final Color color;
  final TextStyle style;

  const Cabin({
    required this.text,
    required this.color,
    required this.style,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 150,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: Text(
          text,
          style: style,
        ),
      ),
    );
  }
}




import 'package:flutter/material.dart';
import 'package:plane_chellange/config/colors/colors.dart';

class DecreIncre extends StatelessWidget {
  final String image;

  const DecreIncre({
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 155,
      padding: const EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          ClipOval(
            child: Container(
              height: 30,
              width: 30,
              color: colorOrange,
              child: const Icon(
                Icons.remove,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Image.asset(
            image,
            height: 30,
            width: 40,
          ),
          const SizedBox(width: 15),
          ClipOval(
            child: Container(
              height: 30,
              width: 30,
              color: colorGreen,
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

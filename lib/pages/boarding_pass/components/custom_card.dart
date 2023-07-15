import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Color color;
  final String text;
  final IconData icon;
  final String text1;
  final BoxDecoration decoration;
  const CustomCard({
    Key? key,
    required this.color,
    required this.text,
    required this.text1,
    required this.decoration, required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 160,
      decoration: decoration,
      child: Padding(
        padding: const EdgeInsets.only(left: 25, top: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: color,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              text,
              style: const TextStyle(color: Colors.grey, fontSize: 15),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              text1,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}

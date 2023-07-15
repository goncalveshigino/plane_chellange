import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text1;
  final String text2;
  final Color color;

  const CustomText({
    required this.text1,
    required this.text2,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text1,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            text2,
            style: TextStyle(color: Colors.grey.shade500, fontSize: 15),
          )
        ],
      ),
    );
  }
}

class CustomText2 extends StatelessWidget {
  final String text2;
  final ImageProvider<Object> image;
  final TextStyle style;

  const CustomText2({
    required this.image,
    required this.text2,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only( left: 7),
            child: Image(
              image: image,
              height: 40,
              width: 35,
              color: Colors.blue,
            ),
          ),
          Text(
            text2,
            style: style
          )
        ],
      ),
    );
  }
}

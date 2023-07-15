
import 'package:flutter/material.dart';

class CardSeat extends StatelessWidget {

  final Text text;
  final Color color;

  const CardSeat({
    Key? key,
    required this.text,
     this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      margin: const EdgeInsets.only(
        right: 15,
      ),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(20)),
      child:  Center(
        child: text
      ),
    );
  }
}


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
      height: 50,
      width: 50,
      margin: const EdgeInsets.only(
        right: 15,
      ),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(10)),
      child:  Center(
        child: text
      ),
    );
  }
}

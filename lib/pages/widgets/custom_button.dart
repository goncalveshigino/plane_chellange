
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String name;
  const CustomButton({
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70, 
      margin: const EdgeInsets.only(left: 25, right: 25),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 64, 152, 121),
        borderRadius: BorderRadius.circular(20)
      ),
      child:  Center(
        child: Text(
          name, 
          style: const TextStyle(
            fontSize: 15, 
            fontWeight: FontWeight.bold, 
            color: Colors.white
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class FromToPage extends StatelessWidget {
  final String image;
  final String text1;
  final String text2;
  final Color color;

  const FromToPage({
    required this.color,
    required this.text1,
    required this.text2,
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 60,
      width: 325,
      decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: Colors.black12),
          borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 2),
                    child: Image.asset(
                      image,
                      height: 30,
                      color: color,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Container(
                      width: 1,
                      height: 23,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 2),
                    child: Text(
                      text1,
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(text2,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:plane_chellange/pages/widgets/widgets.dart';

import 'components/components.dart';

class SelectSeatPage extends StatelessWidget {
  const SelectSeatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 245, 245),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 247, 245, 245),
        title: const Text(
          'Select Seat',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          const CardBusiness(),
          SizedBox(
            height: 470,
            child: ListView(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    top: 15,
                  ),
                  child: Center(
                    child: Text(
                      'Business Class',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Row(
                  children: const [
                    SeletedSeatCard(),
                    SizedBox(
                      width: 15,
                    ),
                    SeletedSeatCard()
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Center(
                    child: Text(
                      'Economy',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Row(
                  children: const [
                    SeletedSeatCard(),
                    SizedBox(
                      width: 15,
                    ),
                    SeletedSeatCard()
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 180,
              color: const Color.fromARGB(255, 47, 70, 47),
              child: Column(
                children: [
                  Row(
                    children: [
                      CustomCheck(
                        text: 'Available',
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      const SizedBox(width: 20),
                      CustomCheck(
                        text: 'Booked',
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 59, 85, 59),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      const SizedBox(width: 20),
                      CustomCheck(
                        text: 'Selected',
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 203, 132, 25),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  const CustomButton(name: 'Select Seat')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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

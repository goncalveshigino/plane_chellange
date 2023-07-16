import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:plane_chellange/config/colors/colors.dart';
import 'package:plane_chellange/pages/widgets/widgets.dart';

import 'components/components.dart';

class SelectSeatPage extends StatelessWidget {
  const SelectSeatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
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
              color: colorGreen,
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
                          color: const Color.fromARGB(255, 48, 64, 48),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      const SizedBox(width: 20),
                      CustomCheck(
                        text: 'Selected',
                        decoration: BoxDecoration(
                          color: colorOrange,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  GestureDetector(
                    onTap: () {
                      context.push('/boarding_pass');
                    },
                    child: const CustomButton(name: 'Select Seat'),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

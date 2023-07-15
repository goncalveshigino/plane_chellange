import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:plane_chellange/pages/widgets/widgets.dart';

import 'components.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 247, 245, 245),
            borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CardVacations(),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Departure',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 120),
                  Text('Adults',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
                ],
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 155,
                    padding: const EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.calendar_month_outlined,
                          color: Color.fromARGB(255, 203, 132, 25),
                        ),
                        SizedBox(width: 10),
                        Text(
                          '21 July, 2023',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 40),
                  const DecreIncre(
                    image: 'assets/img/person.png',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Children',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 120),
                  Text('Infants',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: const [
                  DecreIncre(
                    image: 'assets/img/person.png',
                  ),
                  SizedBox(width: 40),
                  DecreIncre(
                    image: 'assets/img/mi.png',
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25, top: 25),
              child: Text(
                'Cabin',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 25),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  SizedBox(
                    width: 20,
                  ),
                  Cabin(
                    text: 'Economy',
                    color: Color.fromARGB(255, 59, 85, 59),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                  Cabin(
                    text: 'Business',
                    color: Colors.white,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Color.fromARGB(255, 57, 78, 57)),
                  ),
                  Cabin(
                    text: 'First',
                    color: Colors.white,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Color.fromARGB(255, 59, 85, 59)),
                  )
                ],
              ),
            ),
            const SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                context.push('/checkout');
              },
              child: const CustomButton(
                name: 'Buy Ticket',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

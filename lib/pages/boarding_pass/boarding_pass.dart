import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:plane_chellange/config/colors/colors.dart';

import 'package:plane_chellange/pages/widgets/widgets.dart';

import '../type_of_ticket/components/components.dart';
import 'components/components.dart';

class BoardingPassPage extends StatelessWidget {
  const BoardingPassPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: size.height * 0.35,
                color: colorGreen,
                child: Image.asset(
                  'assets/img/map.png',
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 171, left: 25, right: 25),
                child: Container(
                  height: 640,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Image.asset(
                          'assets/img/pfli.png',
                          height: 110,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 75, top: 10, right: 75),
                        child: Text(
                          'American Airlines Flight MLI-18',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 15),
                      const LinhaTrasejada(),
                      const CardTime(),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: CustomCard(
                              icon: Icons.calendar_month_outlined,
                              text: 'Time',
                              text1: '10:00 - 12:00',
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 64, 152, 121)),
                                  borderRadius: BorderRadius.circular(20)),
                              color: colorOrange,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: CustomCard(
                              icon: Icons.watch_later_outlined,
                              text: 'Date',
                              text1: 'July 13, 2023',
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(20)),
                              color: const Color.fromARGB(255, 64, 152, 121),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 25),
                        child: Row(
                          children: const [
                            SeatNumber(
                              text: 'Gate',
                              text1: 'C2',
                            ),
                            SizedBox(width: 40),
                            SeatNumber(
                              text: 'Seat',
                              text1: 'A1',
                            ),
                            SizedBox(width: 40),
                            SeatNumber(
                              text: 'Flight',
                              text1: 'ZCVD',
                            ),
                            SizedBox(width: 40),
                            SeatNumber(
                              text: 'Class',
                              text1: 'Business',
                            )
                          ],
                        ),
                      ),
                      const LinhaTrasejada(),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 25, top: 20, right: 25),
                        child: Image.asset(
                          'assets/img/ba.png',
                          height: 80,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 110, top: 20, right: 85),
                        child: Text(
                          'Goncalves Higino',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Positioned(
                top: 110,
                right: 140,
                child: Text(
                  "Boarding Pass",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: 55,
                right: 30,
                child: ClipOval(
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      'assets/img/luiz.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const Positioned(
                top: 370,
                left: 173,
                child: CustomArco(
                  color: colorOrange,
                ),
              ),
              const Positioned(
                top: 330,
                left: 17,
                child: BolaCorte(),
              ),
              const Positioned(
                top: 330,
                right: 17,
                child: BolaCorte(),
              ),
              const Positioned(
                bottom: 158,
                right: 17,
                child: BolaCorte(),
              ),
              const Positioned(
                bottom: 158,
                left: 17,
                child: BolaCorte(),
              ),
            ],
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              context.push('/ticket_from');
            },
            child: const CustomButton(name: 'Download Ticket'),
          ),
        ],
      ),
    );
  }
}

class BolaCorte extends StatelessWidget {
  
  const BolaCorte({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        height: 20,
        width: 20,
        color: backgroundColor,
      ),
    );
  }
}

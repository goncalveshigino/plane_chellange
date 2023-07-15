import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:plane_chellange/pages/recent_flight/components/card_details_recent.dart';

import '../type_of_ticket/components/components.dart';

class RecentFlights extends StatelessWidget {
  const RecentFlights({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 245, 245),
      body: Stack(
        children: [
          Container(
            height: 280,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 59, 85, 59),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 300, left: 25, right: 25),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      'Recent Flights',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 90),
                    Container(
                      height: 43,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text('Highest Price'),
                          ),
                          SizedBox(width: 15),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Color.fromARGB(255, 203, 132, 25),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                const CardDetailsRecent(
                  image: 'assets/img/british.png',
                  text1: '12:00 Am',
                  text2: '03:00 Am',
                  text3: '02:00 Am',
                  text4: 'AOA 350',
                ),
                const SizedBox(height: 20),
                const CardDetailsRecent(
                  image: 'assets/img/etihad.png',
                  text1: '08:00 Am',
                  text2: '11:00 Am',
                  text3: '10:00 Am',
                  text4: 'AOA 150',
                ),
                const SizedBox(height: 20),
                const CardDetailsRecent(
                  image: 'assets/img/saudia.png',
                  text1: '12:30 Am',
                  text2: '03:00 Am',
                  text3: '01:00 Am',
                  text4: 'AOA 450',
                )
              ],
            ),
          ),
          Positioned(
            top: 150,
            left: 26,
            child: Row(
              children: const [
                CustomText(
                  text1: 'BSW',
                  text2: 'Barstow',
                  color: Color.fromARGB(255, 203, 132, 25),
                ),
                SizedBox(width: 60),
                CustomText2(
                  image: AssetImage(
                    'assets/img/fli.png',
                  ),
                  text2: '1h 30m',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 60),
                CustomText(
                  text1: 'ARV',
                  text2: 'Ashland',
                  color: Colors.white,
                ),
              ],
            ),
          ),
          const Positioned(
            top: 180,
            left: 155,
            child: CustomArco(color: Color.fromARGB(255, 203, 132, 25)),
          ),
          Positioned(
              top: 0,
              child: Image.asset(
                'assets/img/map.png',
                color: Colors.grey,
                height: 270,
              )),
          Positioned(
            top: 55,
            right: 20,
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
          Positioned(
            top: 60,
            left: 20,
            child: IconButton(
              onPressed: () {
                context.pop();
              },
              icon: const Icon(
                Icons.arrow_back_outlined,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}

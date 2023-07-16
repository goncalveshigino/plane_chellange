

import 'package:flutter/material.dart';
import 'package:plane_chellange/config/colors/colors.dart';

class CardBusiness extends StatelessWidget {
  const CardBusiness({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 20, top: 10, right: 20),
              child: Container(
                height: 170,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            'Canada Airlines',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Icon(
                            Icons.podcasts,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Row(
                        children: [
                          const Text('SFO'),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 1,
                            width: 180,
                            color: colorOrange,
                          ),
                          const SizedBox(width: 10),
                          const Text('SFO'),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12, top: 5),
                      child: Row(
                        children: const [
                          Text(
                            '10:00 AM',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 135,
                          ),
                          Text(
                            '12:00 AM',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [

                          Container(
                            height: 45,
                            width: 120,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(
                                    255, 26, 162, 155),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                              child: Text('Business', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700)),
                            ),
                          ), 

                          const Padding(
                            padding: EdgeInsets.only( left: 170),
                            child: Text('AOA 250', style: TextStyle( fontWeight: FontWeight.bold, fontSize: 15),),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 64,
              right: 165,
              child: ClipOval(
                child: Container(
                  height: 8,
                  width: 8,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              top: 64,
              left: 80,
              child: ClipOval(
                child: Container(
                  height: 8,
                  width: 8,
                  color: const Color.fromARGB(255, 26, 162, 155),
                ),
              ),
            ),
            Positioned(
              top: 53,
              left: 160,
              child: ClipOval(
                child: Image.asset('assets/img/fli.png',
                    height: 30, color: Colors.blue),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

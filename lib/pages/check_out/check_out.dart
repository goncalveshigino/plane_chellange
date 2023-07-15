import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/widgets.dart';
import 'components/components.dart';

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 245, 245),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Checkout',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              height: size.height * 0.1,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 253, 253),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: const [
                  SizedBox(width: 20),
                  PayTypes(
                    image: 'assets/img/master.png',
                    name: 'Master',
                  ),
                  SizedBox(width: 15),
                  PayTypes(
                    image: 'assets/img/paypal.png',
                    name: 'PayPal',
                  ),
                  SizedBox(width: 15),
                  PayTypes(
                    image: 'assets/img/visa.png',
                    name: 'Visa',
                  ),
                  SizedBox(width: 20),
                  PayTypes(
                    image: 'assets/img/binance.png',
                    name: 'Binance',
                  )
                ],
              ),
            ),
          ),
          const PlaneDetails(),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 15, right: 25),
            child: Container(
              height: 140,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Image.asset(
                      'assets/img/saudia.png',
                      height: 80,
                    ),
                  ),
                  const SizedBox(width: 20),
                  const CardInfo(
                    text1: 'Departure',
                    text2: Text(
                      '12:30 Am',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                    text3: 'Estimate',
                    text4: Text(
                      '03:00 Am',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 26, 162, 155)),
                    ),
                  ),
                  const SizedBox(width: 35),
                  const CardInfo(
                    text1: 'Arrive',
                    text2: Text(
                      '01:00 Am',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    text3: 'Price',
                    text4: Text(
                      'AOA 450',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 203, 132, 25)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              context.push('/recent');
            },
            child: const CustomButton(
              name: 'Procceed',
            ),
          )
        ],
      ),
    );
  }
}

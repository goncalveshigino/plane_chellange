import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:plane_chellange/config/colors/colors.dart';

import '../type_of_ticket/components/components.dart';

class SearchFlight extends StatelessWidget {
  const SearchFlight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 270,
                color: colorGreen,
              ),
              Expanded(
                child: Container(
                  height: double.infinity,
                  decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ],
          ),
          Positioned(
            top: 1,
            child: Image.asset(
              'assets/img/map.png',
              color: Colors.grey.shade600,
              height: 250,
            ),
          ),
          Positioned(
            top: 90,
            right: 25,
            left: 25,
            child: Container(
              height: 75,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 26, 162, 155),
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: 'Search  Flight',
                      hintStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 30,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Positioned(
            top: 225,
            left: 25,
            right: 25,
            child: CardFlight(),
          ),
        ],
      ),
    );
  }
}

class CardFlight extends StatelessWidget {
  const CardFlight({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('/type_ticket');
      },
      child: Column(
        children: const [
          CardFlightValidation(),
          SizedBox(height: 25),
          CardFlightValidation(),
          SizedBox(height: 25),
          CardFlightValidation(),
          SizedBox(height: 25),
          CardFlightValidation(),
        ],
      ),
    );
  }
}

class CardFlightValidation extends StatelessWidget {
  const CardFlightValidation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 145,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  'Business Trip to New York',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  CustomText(
                    text1: 'CHLD',
                    text2: 'Cerritos',
                    color: colorOrange,
                  ),
                  SizedBox(width: 60),
                  CustomText2(
                    image: AssetImage(
                      'assets/img/fli.png',
                    ),
                    text2: '1h 30m',
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(width: 60),
                  CustomText(
                    text1: 'DNY',
                    text2: 'Downey',
                    color: Color.fromARGB(255, 26, 162, 155),
                  ),
                ],
              )
            ],
          ),
        ),
        const Positioned(
          top: 78,
          left: 134,
          child: CustomArco(color: colorOrange),
        ),
      ],
    );
  }
}

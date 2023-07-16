import 'package:flutter/material.dart';
import 'package:plane_chellange/config/colors/colors.dart';

import 'components.dart';

class CardVacations extends StatelessWidget {
  
  const CardVacations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        
        Container(
          height: 135,
          margin: const EdgeInsets.all(25),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  'Vacation In Maldives',
                  style: TextStyle(
                      fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children:  const [
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
                    style: TextStyle(
                      color: Colors.black
                    ),
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
          top: 85,
          left: 155,
          child: CustomArco(color: colorOrange),
        )
      ],
    );
  }
}

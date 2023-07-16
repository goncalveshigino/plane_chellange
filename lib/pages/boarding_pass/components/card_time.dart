import 'package:flutter/material.dart';
import 'package:plane_chellange/config/colors/colors.dart';

import '../../type_of_ticket/components/components.dart';

class CardTime extends StatelessWidget {
  const CardTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Row(
        children: const [
          CustomText(
            text1: 'BSW',
            text2: 'Barstow',
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
          SizedBox(width: 50),
          CustomText(
            text1: 'ARV',
            text2: 'Ashland',
            color: Color.fromARGB(255, 26, 162, 155),
          ),
        ],
      ),
    );
  }
}

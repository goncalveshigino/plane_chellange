

import 'package:flutter/material.dart';

class LinhaTrasejada extends StatelessWidget {
  const LinhaTrasejada({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.grey,
        width: 1,
      )),
    );
  }
}

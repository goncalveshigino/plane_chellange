import 'package:flutter/material.dart';
import 'components/components.dart';

class TypeOfTicket extends StatelessWidget {
  const TypeOfTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 59, 85, 59),
      body: Column(
        children: const [
          SizedBox(height: 20),
          CustomAppBar(),
          CardDetails(),
        ],
      ),
    );
  }
}

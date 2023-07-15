import 'package:flutter/material.dart';

class CustomArco extends StatelessWidget {
  final Color color;

  const CustomArco({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 100,
        width: 100,
        child: CustomPaint(
          painter: CustomArcoPainter(color),
        ),
      ),
    );
  }
}

class CustomArcoPainter extends CustomPainter {
  final Color color;

CustomArcoPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {


    final lapiz = Paint(); //..shader = gradiente.createShader(rect);

    //Propriedades
    lapiz.color = color;
    lapiz.style = PaintingStyle.stroke; // .fill .stroke
    lapiz.strokeWidth = 1;

    final arc = Path();

    arc.moveTo(size.width * 0.2, size.height * 0.2);
    arc.arcToPoint(
      Offset(size.width * 0.8, size.height * 0.2), 
      radius: const Radius.circular(10)
    );
    

  

    canvas.drawPath(arc, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

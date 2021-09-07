

import 'package:flutter/material.dart';

class CustomPaintBackgroundPageOne extends CustomPainter {

    final int color;

    CustomPaintBackgroundPageOne({ required this.color} );


  @override
  void paint(Canvas canvas, Size size) {

      final pencil = Paint();
      pencil.color = Color( color );
       pencil.style = PaintingStyle.fill;
       pencil.strokeWidth = 10;

      final path = Path();
      
        path.moveTo(0,  size.height * 0.15);
        path.quadraticBezierTo(  size.width * 0.4 ,  size.height * 0.14  ,size.width, size.height * 0.22);
        path.lineTo( size.width  ,  size.height * 0.54);
        path.quadraticBezierTo(size.width * 0.4 ,  size.height * 0.44 ,  0  ,  size.height * 0.45);

      canvas.drawPath(path, pencil);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }



}
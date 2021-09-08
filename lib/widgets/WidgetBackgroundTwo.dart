import 'package:flutter/material.dart';
import 'package:recycleapp/consts/consts.dart';
import 'package:recycleapp/helper/customPainter.dart';

class WidgetBackGroundPageTwo extends StatelessWidget {
  const WidgetBackGroundPageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: CustomPaint(
           painter: CustomPaintBackgroundPageTwo( color:  Colores.colorSecondary ),
      ),
    );
  }
}
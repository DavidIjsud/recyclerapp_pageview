import 'package:flutter/material.dart';
import 'package:recycleapp/consts/consts.dart';
import 'package:recycleapp/helper/customPainter.dart';

class WidgetBackGroundPageOne extends StatelessWidget {
  const WidgetBackGroundPageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: CustomPaint(
           painter: CustomPaintBackgroundPageOne( color:  Colores.colorSecondary ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:recycleapp/consts/consts.dart';
import 'package:recycleapp/helper/customPainter.dart';

class WidgetBackGround extends StatelessWidget {
  const WidgetBackGround({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final phoneSize = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: CustomPaint(
           painter: CustomPaintBackgroundPageOne( color:  Colores.colorPrimary ),
      ),
    );
  }
}
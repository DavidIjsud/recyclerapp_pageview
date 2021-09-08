import 'package:flutter/material.dart';
import 'package:recycleapp/consts/consts.dart';

class WidgetTextHeader extends StatelessWidget {
  final String text;
  const WidgetTextHeader({Key? key, required this.text }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric( horizontal: 50 ),
      child: Text(
          this.text,
          style:  TextStyle(  fontSize: 40 , fontWeight: FontWeight.bold  , color: Color( Colores.colorPrimary )   ) ,
      ),
    ) ;
  }
}
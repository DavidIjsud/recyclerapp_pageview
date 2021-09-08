import 'package:flutter/material.dart';
import 'package:recycleapp/consts/consts.dart';

class WidgetTextDetail extends StatelessWidget {
  final String text;
  const WidgetTextDetail({Key? key, required this.text }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric( horizontal: 50),
      child: Text(
          this.text,
          style:  TextStyle( color: Color(Colores.colorPrimary) ) ,
      ),
    ) ;
  }
}
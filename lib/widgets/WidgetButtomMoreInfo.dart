import 'package:flutter/material.dart';
import 'package:recycleapp/consts/consts.dart';

class WidgetButtonMoreDetail extends StatelessWidget {
  const WidgetButtonMoreDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final phoneSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric( horizontal: 50 ),
      child: Container(
        width:  phoneSize.width * 0.25,
        height: phoneSize.width * 0.05,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(Colores.colorSecondary)
        ),
        child: Center(child: Text( 'MORE INFO' , style : TextStyle( color: Colors.white  )  )),
      ),
    );
  }
}
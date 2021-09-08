import 'package:flutter/material.dart';

class WidgetEcoBagImage extends StatelessWidget {

  final String image;
   
  const WidgetEcoBagImage({Key? key , required this.image  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final phoneSize = MediaQuery.of(context).size;
    return Padding(
           padding: const EdgeInsets.only(top: 50),
           child: Container(
             width: phoneSize.height * 0.6,
             height: phoneSize.height * 0.6,
             child: Image.asset( this.image )),
           );
    }
}
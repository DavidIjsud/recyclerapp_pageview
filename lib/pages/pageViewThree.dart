import 'package:flutter/material.dart';
import 'package:recycleapp/widgets/WidgetBackgroundOne.dart';
import 'package:recycleapp/widgets/WidgetButtomMoreInfo.dart';
import 'package:recycleapp/widgets/WidgetEcobagImage.dart';
import 'package:recycleapp/widgets/WidgetTextDetail.dart';
import 'package:recycleapp/widgets/WidgetTextHeader.dart';

class PageViewThree extends StatelessWidget {
  const PageViewThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Stack(
         children: [
              WidgetBackGroundPageOne(),
              Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                     WidgetEcoBagImage( image:  'assets/images/tree.png' , ),
                     SizedBox( height: 10, ),
                     WidgetTextHeader(text: 'CLEAN EARTH'),
                     SizedBox( height: 5, ),
                     WidgetTextDetail(text:  'Laboris ad nostrud eu magna sunt tempor ea. Dolor cillum aliquip cupidatat eu. Officia occaecat nostrud laborum non.' ),
                     SizedBox( height: 10, ),
                     WidgetButtonMoreDetail(),
                 ],
              ),
         ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:recycleapp/widgets/WidgetBackgroundOne.dart';
import 'package:recycleapp/widgets/WidgetButtomMoreInfo.dart';
import 'package:recycleapp/widgets/WidgetEcobagImage.dart';
import 'package:recycleapp/widgets/WidgetTextDetail.dart';
import 'package:recycleapp/widgets/WidgetTextHeader.dart';

class PageViewOne extends StatelessWidget {
  const PageViewOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
         children: [
              WidgetBackGroundPageOne(),
              Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                     WidgetEcoBagImage( image:  'assets/images/eco_bag.png' , ),
                     SizedBox( height: 10, ),
                     WidgetTextHeader(text: 'ZERO PLASTIC'),
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
import 'package:flutter/material.dart';
import 'package:recycleapp/widgets/WidgetBackgroundTwo.dart';
import 'package:recycleapp/widgets/WidgetButtomMoreInfo.dart';
import 'package:recycleapp/widgets/WidgetEcobagImage.dart';
import 'package:recycleapp/widgets/WidgetTextDetail.dart';
import 'package:recycleapp/widgets/WidgetTextHeader.dart';

class PageViewTwo extends StatelessWidget {
  const PageViewTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Stack(
         children: [
              WidgetBackGroundPageTwo(),
              Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                     WidgetEcoBagImage( image:  'assets/images/trash.png' , ),
                     SizedBox( height: 10, ),
                     WidgetTextHeader(text: 'RECYCLE'),
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
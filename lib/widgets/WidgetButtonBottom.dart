import 'package:flutter/material.dart';
import 'package:recycleapp/bloc/homePageBloc.dart';
import 'package:recycleapp/consts/consts.dart';

class WidgetButtonBottom extends StatefulWidget {

  final int id;

  WidgetButtonBottom({Key? key , required this.id }) : super(key: key);

  @override
  _WidgetButtonState createState() => _WidgetButtonState();
}

class _WidgetButtonState extends State<WidgetButtonBottom> {


  final HomePageBloc _homePageBloc = HomePageBloc();

  @override
  Widget build(BuildContext context) {

    final phoneSize = MediaQuery.of(context).size;

    return StreamBuilder<int>(
      stream:   this._homePageBloc.pageStream ,
      initialData: 0,
      builder: (context, snapshot) {
        return Container(
            width: phoneSize.width * 0.02 ,
            height: phoneSize.width * 0.02 ,
            decoration: BoxDecoration(
                color:  snapshot.data == widget.id ?  Color( Colores.colorPrimary )   :  Colores.colorPrimaryWithOpacity , 
                borderRadius: BorderRadius.circular(phoneSize.width * 0.05)
            ),
        );
      }
    );
  }
}
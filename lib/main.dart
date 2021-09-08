import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recycleapp/consts/consts.dart';
import 'package:recycleapp/pages/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(Colores.colorPrimary),
    ));

    return MaterialApp(
      title: 'Recycler App PageViewer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: MaterialColor( Colores.colorPrimary ,  color )
      ),
      home: HomePage(),
    );
  }
}
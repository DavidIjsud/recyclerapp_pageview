import 'package:flutter/material.dart';
import 'package:recycleapp/widgets/WidgetBackground.dart';

class HomePage extends StatelessWidget {
  
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: WidgetBackGround(),
    );
  }

}
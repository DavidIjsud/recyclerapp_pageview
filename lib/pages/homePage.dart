import 'package:flutter/material.dart';
import 'package:recycleapp/pages/pageViewOne.dart';
import 'package:recycleapp/pages/pageViewThree.dart';
import 'package:recycleapp/pages/pageViewTwo.dart';

class HomePage extends StatelessWidget {
  
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  Column(
           children: [
             Expanded(
               child: PageView(
                  children: [
                        PageViewOne(),
                        PageViewTwo(),
                        PageViewThree()
                  ],
                ),
             ),
              Container(
                 width: double.infinity,
                 height: MediaQuery.of(context).size.height * 0.05,
                 color: Colors.red,
              ),
           ],
        )
    );
  }

}
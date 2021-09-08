import 'package:flutter/material.dart';
import 'package:recycleapp/bloc/homePageBloc.dart';
import 'package:recycleapp/pages/pageViewOne.dart';
import 'package:recycleapp/pages/pageViewThree.dart';
import 'package:recycleapp/pages/pageViewTwo.dart';
import 'package:recycleapp/widgets/WidgetButtonBottom.dart';

class HomePage extends StatelessWidget {
  
   HomePage({Key? key}) : super(key: key);

  
  final PageController _pageController = PageController(initialPage: 0);
  final HomePageBloc _homePageBloc = HomePageBloc();



  void listenPageChange(){

         _pageController.addListener(() { 
        
              double page = _pageController.page!;
              if( page == 0.0 ){
                  this._homePageBloc.pageSink.add(0);
              }

              if( page == 1.0 ){
                  this._homePageBloc.pageSink.add(1);
              }

              if( page == 2.0 ){
                  this._homePageBloc.pageSink.add(2);
              }

          });

  }

  @override
  Widget build(BuildContext context) {
    listenPageChange();
    return Scaffold(
        body:  Column(
           children: [
             Expanded(
               child: PageView(
                  controller: _pageController,
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
                 child: Center(
                     child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            WidgetButtonBottom( id:  0, ),
                            SizedBox( width: MediaQuery.of(context).size.width * 0.05,),
                            WidgetButtonBottom( id:  1, ),
                            SizedBox( width: MediaQuery.of(context).size.width * 0.05,),
                            WidgetButtonBottom( id:  2, )
                        ],
                     ),
                 ),
              ),
           ],
        )
    );
  }

}
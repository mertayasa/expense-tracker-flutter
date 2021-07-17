import 'package:flutter/material.dart';
import 'package:test_app/home/section/header.dart';
import 'package:test_app/home/section/main.dart';

class HomeBody extends StatelessWidget{
  
  @override
  
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HomeHeader(),
          HomeMain(),
          // TitleWithMoreBtn(title: "Recomended", press: () {}),
          // RecomendsPlants(),
          // TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          // FeaturedPlants(),
          // SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
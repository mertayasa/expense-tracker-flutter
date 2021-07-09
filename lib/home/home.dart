import 'package:flutter/material.dart';
import 'package:test_app/home/body.dart';

class Home extends StatelessWidget{
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: HomeBody(),
    );
  }

  AppBar buildAppBar(){
    return AppBar(
      title: Text('Baliant Suite'),
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: (){}
      ) 
    );
  }

}
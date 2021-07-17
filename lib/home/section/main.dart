import 'package:flutter/material.dart';

class HomeMain extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // padding: EdgeInsets.all(20),
      child: Center(
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage('assets/images/no_credit.png'),
              width: size.width * 0.7, //   <--- image
            ),
            Text('Opps, nothing here',
              style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: Colors.grey, fontWeight: FontWeight.bold),
            )
          ],
        ),
      )
    );
  }
}
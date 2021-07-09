import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget{
  @override
  
  Widget build(BuildContext context) {
    const defaultColor = Colors.green;
    Size size = MediaQuery.of(context).size;
    
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 20.0 * 2.5),
          height: size.height * 0.25,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  bottom: 36 + 20.0,
                ),
                height: size.height * 0.2,
                decoration: BoxDecoration(
                  color: defaultColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)
                  )
                ),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Balance : ',
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    // margin: const EdgeInsets.only(bottom: 0, top: 30),
                    Container(
                      padding: EdgeInsets.only(
                        left: 10.0,
                        right: 10.0,
                        bottom: 5.0,
                        top: 5.0,
                      ),
                      width: size.width * 0.42,
                      height: size.height * 0.1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 5),
                            blurRadius: 20,
                            color: defaultColor.withOpacity(0.15),
                          ),
                        ],
                      ),
                      child: Text("Expense"),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 10.0,
                        right: 10.0,
                        bottom: 5.0,
                        top: 5.0,
                      ),
                      width: size.width * 0.42,
                      height: size.height * 0.1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 5),
                            blurRadius: 20,
                            color: defaultColor.withOpacity(0.15),
                          ),
                        ],
                      ),
                      child: Text("Income"),
                    ),
                  ],
                )
              )
            ],
          ),
        )
      ],
    );

  }

}
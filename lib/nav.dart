import 'package:flutter/material.dart';
import 'package:test_app/home/home.dart';


class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {

  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Home(),
    Text('Expenses'),
    Text('Incomes'),
  ];

  void _onItemTap(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Center(child: Text('Baliant Suite')),
      // ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Summary' 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Expenses' 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.savings),
            label: 'Income' 
          ),
        ],

        currentIndex: _selectedIndex,
        onTap: _onItemTap,

      ),
    );
  }
}
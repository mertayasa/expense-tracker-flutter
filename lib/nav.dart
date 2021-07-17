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
    Text('Setting'),
  ];

  void _onItemTap(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(
          left: 13.0,
          right: 13.0,
          bottom: 8.0,
          top: 8.0,
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(10.0, 15.0),
              blurRadius: 20,
              spreadRadius: 5,
              color: Colors.green.withOpacity(0.15),
            ),
          ],
        ),

        child: ClipRRect (
          borderRadius: BorderRadius.circular(20),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart),
                label: 'Summaries' 
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag),
                label: 'Expenses' 
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.savings),
                label: "Incomes" 
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.manage_accounts),
                label: "Settings" 
              ),
            ],

            currentIndex: _selectedIndex,
            onTap: _onItemTap,
            fixedColor: Colors.green,
            unselectedItemColor: Colors.grey,
          ),
        )

      )



    );
  }
}
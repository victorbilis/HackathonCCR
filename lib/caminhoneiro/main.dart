import 'package:flutter/material.dart';
import 'home.dart';
import 'auto.dart';

class CaminhoneiroMain extends StatefulWidget {
  @override
  _CaminhoneiroMainState createState() => _CaminhoneiroMainState();
}

class _CaminhoneiroMainState extends State<CaminhoneiroMain> {

  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = [
    Home(),
    Auto()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0XFF963521)
        ),
      ),
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Perfil'),
          ),
        ],
        iconSize: 30.0,
        selectedItemColor: Color(0XFF963521),
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
      )
    ),
    );
  }
}



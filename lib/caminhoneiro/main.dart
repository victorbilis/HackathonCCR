import 'package:flutter/material.dart';
import 'home.dart';
import 'auto.dart';

class CaminhoneiroMain extends StatefulWidget {
  @override
  _CaminhoneiroMainState createState() => _CaminhoneiroMainState();
}

class _CaminhoneiroMainState extends State<CaminhoneiroMain> {

  int _selectedIndex = 0;
  int _selectedIndex2 = 0;

  final List<Widget> _widgetOptions = [
    Home(),
    Auto()
  ];

   _onSelectItem(int index) {
    setState(() => _selectedIndex2 = index);
    Navigator.of(context).pop();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  _widgetOptions.elementAt(_selectedIndex),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Cabeçalho'),
              decoration: BoxDecoration(
                color: Color(0XFF963521),
              ),
            ),
            ListTile(
              title: Row(children: <Widget>[
                Icon(
                  Icons.exit_to_app,
                  color: Colors.black,
                  size: 24.0,
                ),
                Text(" Sair",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)
              ],),
              onTap: () {
                _onSelectItem(0);
              },
            ),
          ],
        ),
      ),
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



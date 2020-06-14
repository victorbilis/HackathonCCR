import 'package:flutter/material.dart';

class Auto extends StatefulWidget {
  @override
  _AutoState createState() => _AutoState();
}

class _AutoState extends State<Auto> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Stack(  
              children: <Widget>[
                  Positioned(
                  child: Container(
                  alignment: Alignment.center,
                  /*decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0, 0.5],
                      colors: [
                        Color(0xFFdfa409),
                        Color(0XFF963521),
                      ],
                    )
                  ),*/
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        child: Image.asset('assets/background.png'),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(40.0),
                            topRight: const Radius.circular(40.0),
                          )
                        ),
                      ),
                    ],
                  ),
                )
              ),
              Positioned(
                top: 70,
                left: -10,
                right: -10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/Ellipse.png')
                  ],
                ),
              ),
              ],
            ),
          ),
      );
  }
}
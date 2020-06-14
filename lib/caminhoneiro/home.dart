import 'package:flutter/material.dart';
import 'estabelecimento.dart';
import 'carteira.dart';
import 'servicos.dart';
import 'tutorial.dart';
import 'package:player/utils/globals.dart' as globals;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var name = globals.name;

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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Olá $name, seja bem-vindo!",style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Estabelecimento()));
                                },
                                child: Padding(
                                padding: EdgeInsets.only(top:20,right:20,left:20,bottom: 10),
                                child: Container(
                                  width: MediaQuery.of(context).size.width/2.6,
                                  height: MediaQuery.of(context).size.width/2.6,
                                  decoration: BoxDecoration(
                                    color: Color(0XFF963521),
                                    borderRadius: BorderRadius.all(const Radius.circular(15.0))
                                  ),
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.all(0),
                                          child: Image.asset('assets/estabelecimento 64x64 (2).png',height: MediaQuery.of(context).size.width/3.4,),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(0),
                                          child: Text("Estabelecimentos",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
                                        )
                                      ],
                                    ),
                                  )
                                ),
                                ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Carteira()));
                                },
                                  child: Padding(
                                padding: EdgeInsets.only(top:20,right:20,left:20,bottom: 10),
                                child: Container(
                                  width: MediaQuery.of(context).size.width/2.6,
                                  height: MediaQuery.of(context).size.width/2.6,
                                  decoration: BoxDecoration(
                                    color: Color(0XFF963521),
                                    borderRadius: BorderRadius.all(const Radius.circular(15.0))
                                  ),
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.all(0),
                                          child: Image.asset('assets/carteira 64x64.png',height: MediaQuery.of(context).size.width/3.4,),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(0),
                                          child: Text("Carteira",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
                                        )
                                      ],
                                    ),
                                  )
                                ),
                                ),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                
                                GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Servico())
                                      );
                                },
                                child:Padding(
                                padding: EdgeInsets.only(top:20,right:20,left:20,bottom: 10),
                                child: Container(
                                  width: MediaQuery.of(context).size.width/2.6,
                                  height: MediaQuery.of(context).size.width/2.6,
                                  decoration: BoxDecoration(
                                    color: Color(0XFF963521),
                                    borderRadius: BorderRadius.all(const Radius.circular(15.0))
                                  ),
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.all(0),
                                          child: Image.asset('assets/consulta 64x64.png',height: MediaQuery.of(context).size.width/3.4,),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(0),
                                          child: Text("Agendar",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
                                        )
                                      ],
                                    ),
                                  )
                                ),
                                ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Tutorial())
                                      );
                                },
                                  child: Padding(
                                padding: EdgeInsets.only(top:20,right:20,left:20,bottom: 10),
                                child: Container(
                                  width: MediaQuery.of(context).size.width/2.6,
                                  height: MediaQuery.of(context).size.width/2.6,
                                  decoration: BoxDecoration(
                                    color: Color(0XFF963521),
                                    borderRadius: BorderRadius.all(const Radius.circular(15.0))
                                  ),
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.all(0),
                                          child: Image.asset('assets/lua.png',height: MediaQuery.of(context).size.width/3.4,),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(0),
                                          child: Text("Coletar pontos",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
                                        )
                                      ],
                                    ),
                                  )
                                ),
                                ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
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
              Positioned(
                  child:  Padding(
                    padding: EdgeInsets.only(top:20),
                    child:Container(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        iconSize: 40,
                        icon: Icon(Icons.menu),
                        color: Colors.white,
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                      ),
                    )
                  ),
                ),
              ],
            ),
          ),
      );
  }
}
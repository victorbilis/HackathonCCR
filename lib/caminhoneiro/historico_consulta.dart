import 'package:flutter/material.dart';

class HistoricoConsulta extends StatefulWidget {
  @override
  _HistoricoConsultaState createState() => _HistoricoConsultaState();
}

class _HistoricoConsultaState extends State<HistoricoConsulta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Container(
        child: Stack(  
              children: <Widget>[
                  Positioned(
                  child: Container(
                  alignment: Alignment.center,
                 /* decoration: BoxDecoration(
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
                      Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: double.infinity,
                              color: Colors.white,
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text("Histórico",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontSize: 28,color: Color(0XFF963521)),),
                                  )
                                ],
                              ),
                            ),
                            Center(
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                children: <Widget>[
                                Container(
                                    width: MediaQuery.of(context).size.width * 0.68,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0XFF963521),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.all(const Radius.circular(5.0))
                                ),
                                child:TextFormField(
                                    decoration: InputDecoration(
                                      labelText: " Nome do estabelecimento",
                                      labelStyle: TextStyle(
                                        color: Colors.black38,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                      ),
                                    ),
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Container(
                                    height: 60,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Color(0XFF963521),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5),
                                      ),
                                    ),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        FlatButton(
                                          child: Text(
                                            "Buscar",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          onPressed: () {},
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                                ],
                              )
                            )
                            ),
                            
                            Container(
                              height: MediaQuery.of(context).size.height/2,
                              child: ListView(
                                children: <Widget>[
                                  ListTile(
                                    title: Text('Clínico geral',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                    subtitle: Text('Esperando aprovação',style: TextStyle(color: Colors.orange)),
                                  
                                  ),
                                  ListTile(
                                    title: Text('Clínico geral',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                    subtitle: Text('Realizado',style: TextStyle(color: Colors.green),),
                                  ),
                                  
                                ],
                              ),
                            )
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
                        icon: Icon(Icons.arrow_back_ios),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    )
                  ),
                ),
                
              ],
            ),
          ),
      ),
    );
  }
}
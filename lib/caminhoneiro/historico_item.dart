import 'package:flutter/material.dart';

class HistoricoItem extends StatefulWidget {
  @override
  _HistoricoItemState createState() => _HistoricoItemState();
}

class _HistoricoItemState extends State<HistoricoItem> {
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
                        child: Image.asset('assets/background2.png'),
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
                            Center(
                              child: Column(
                                  children: <Widget>[
                                    Text("Kit Saúde",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                                    Padding(
                                      padding: EdgeInsets.only(bottom:20, top: 20),
                                      child: Image.asset('assets/kit-saude.png'),
                                    ),
                                    Text("Estabelecimento",style: TextStyle(fontSize: 16)),
                                    Padding(
                                      padding: EdgeInsets.all(16),
                                      child: Text("CCR 50,00",style: TextStyle(fontSize: 20,color: Color(0XFF963521)),)
                                    ),
                                    Text("Data",style: TextStyle(fontSize: 16)),
                                    Padding(
                                      padding: EdgeInsets.all(16),
                                      child: Text("01/05/2020",style: TextStyle(fontSize: 20,color: Color(0XFF963521)),)
                                    ),
                                    Text("Quantidade",style: TextStyle(fontSize: 16)),
                                    Padding(
                                      padding: EdgeInsets.all(16),
                                      child: Text("1",style: TextStyle(fontSize: 20,color: Color(0XFF963521)),)
                                    ),
                                    Text("Valor Total",style: TextStyle(fontSize: 16)),
                                    Padding(
                                      padding: EdgeInsets.all(16),
                                      child: Text("CCR 50,00",style: TextStyle(fontSize: 20,color: Color(0XFF963521)),)
                                    ),
                                    Text("Situação",style: TextStyle(fontSize: 16)),
                                    Padding(
                                      padding: EdgeInsets.all(16),
                                      child: Text("Pendente",style: TextStyle(fontSize: 20,color: Color(0XFF963521)),)
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
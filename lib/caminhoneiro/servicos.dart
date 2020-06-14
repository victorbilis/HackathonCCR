import 'package:flutter/material.dart';
import 'historico_consulta.dart';
import 'agendar.dart';

class Servico extends StatefulWidget {
  @override
  _ServicoState createState() => _ServicoState();
}


class _ServicoState extends State<Servico> {

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
                                    child: Text("Serviços",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontSize: 28,color: Color(0XFF963521)),),
                                  )
                                ],
                              ),
                            ),
                            
                            Container(
                              height: MediaQuery.of(context).size.height/2,
                              child: ListView(
                                children: <Widget>[
                                  ListTile(
                                    title: Text('Corte de cabelo',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                    trailing: Text(' + CCR 50,00',style: TextStyle(fontSize: 18,color: Color(0XFF963521),fontWeight: FontWeight.bold),),
                                    onTap: (){
                                      /*Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => HistoricoItem())
                                          );*/
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                            return AlertDialog(
                                                title: Center( child:Text('Opções',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold))),
                                                content: setupAlertDialoadContainer(),
                                            );
                                            }
                                          );
                                    },
                                  ),
                                  ListTile(
                                    title: Text('Consulta médica',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                    trailing: Text(' + CCR 50,00',style: TextStyle(fontSize: 18,color: Color(0XFF963521),fontWeight: FontWeight.bold),),
                                    
                                  ),
                                  ListTile(
                                    title: Text('Corte de cabelo',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                    trailing: Text(' + CCR 50,00',style: TextStyle(fontSize: 18,color: Color(0XFF963521),fontWeight: FontWeight.bold),),
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

  Widget setupAlertDialoadContainer() {
    return Container(
      height: 120.0, // Change as per your requirement
      width: 150.0, // Change as per your requirement
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Center(child:Text('Agendar',style: TextStyle(fontSize: 18,)),),
            onTap: (){
              Navigator.pushReplacement(
                  context,
              MaterialPageRoute(
                  builder: (context) => Agendar())
              );
            },
          ),
          ListTile(
            title: Center(child:Text('Histórico',style: TextStyle(fontSize: 18,)),),
            onTap: (){
              Navigator.pushReplacement(
                  context,
              MaterialPageRoute(
                  builder: (context) => HistoricoConsulta())
              );
            },
          ),
        ],
      ),
    );
  }
}
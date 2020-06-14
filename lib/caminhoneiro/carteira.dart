import 'package:player/utils/ethereum_utils.dart';
import 'package:flutter/material.dart';
import 'historico.dart';
import 'servicos.dart';
import 'estabelecimento.dart';
import 'package:player/utils/globals.dart' as globals;
import 'package:flutter_money_formatter/flutter_money_formatter.dart';

class Carteira extends StatefulWidget {
  @override
  _CarteiraState createState() => _CarteiraState();
}

class _CarteiraState extends State<Carteira> {
  var saldo = "";
  
  void getSaldo() async{
    var balance = await EthereumUtils.getInformationFromContract(globals.privKey, 'myBalance', []);
    print(balance);
    setState(() {
      FlutterMoneyFormatter fmf = FlutterMoneyFormatter(
        amount: double.parse(balance[0].toString())
      );
      saldo = fmf.output.nonSymbol;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getSaldo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Container(
        child: Stack(  
              children: <Widget>[
                  Positioned(
                  child: Container(
                  alignment: Alignment.centerLeft,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Text("Carteira",
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 28,color: Color(0XFF963521)),),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Container(
                        alignment: Alignment.centerLeft,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0XFF963521),
                          border: Border.all(
                            color: Color(0XFF963521),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.all(const Radius.circular(5.0))
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top:20,left: 20,right: 20,bottom: 30),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text("Conta",
                                style: TextStyle(fontSize: 28,color: Colors.white,),),
                              )
                            ),
                            Padding(
                              padding: EdgeInsets.all(20),
                              child:Align(
                                alignment: Alignment.topLeft,
                                child: Text("Saldo disponível",
                                style: TextStyle(fontSize: 20,color: Colors.white70,),),
                              )
                            ),
                            Padding(
                              padding: EdgeInsets.only(top:0,left: 20,right: 20,bottom: 20),
                              child:Align(
                                alignment: Alignment.topLeft,
                                child: Text("CCR $saldo",
                                style: TextStyle(fontSize: 28,color: Colors.white,),),
                              )
                            )
                          ],
                        ),
                      ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                                padding: EdgeInsets.only(right: 15),
                                child: Container(
                                  width: MediaQuery.of(context).size.width/2.2,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    color: Color(0XFFfbcf00),
                                    border: Border.all(
                                      color: Color(0XFFfbcf00),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.all(const Radius.circular(5.0))
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                    Image.asset('assets/receber.png',height: 200,),
                                    Text("Receber",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                                  ],)
                                ),
                              ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Estabelecimento())
                                      );
                                },
                                child:Container(
                                  width: MediaQuery.of(context).size.width/2.2,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    color: Color(0XFFfbcf00),
                                    border: Border.all(
                                      color: Color(0XFFfbcf00),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.all(const Radius.circular(5.0))
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                    Image.asset('assets/gastar.png',height: 200,),
                                    Text("Gastar",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                                  ],)
                                ),
                              )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Historico())
                              );
                        },
                        child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Color(0XFF963521),
                            border: Border.all(
                              color: Color(0XFF963521),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.all(const Radius.circular(5.0))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                            Image.asset('assets/historico_branco.png',height: 200,),
                            Text("Histórico",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)
                          ],)
                        ),
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
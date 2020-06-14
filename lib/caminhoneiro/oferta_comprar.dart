import 'package:flutter/material.dart';
import 'package:web3dart/credentials.dart';

import '../utils/estabelecimento_item_model.dart';
import 'package:player/utils/globals.dart' as globals;

import '../utils/ethereum_utils.dart';
import 'carteira.dart';

class OfertaComprar extends StatefulWidget {
  EstabelecimentoItemModel item;
  OfertaComprar({this.item});
  @override
  _OfertaComprarState createState() => _OfertaComprarState();
}

class _OfertaComprarState extends State<OfertaComprar> {
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
                          )),
                    ),
                    Container(
                      width: double.infinity,
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          Center(
                            child: Column(
                              children: <Widget>[
                                Text(widget.item.name,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                 Padding(
                                   padding: EdgeInsets.only(bottom: 20, top: 20),
                                  child: Image.network(widget.item.imageUrl),
                                 ),
                                Text("Quantidade",
                                    style: TextStyle(fontSize: 16)),
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(right: 10),
                                        child: Container(
                                          height: 50,
                                          width: 50,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: Color(0XFF963521),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(5),
                                            ),
                                          ),
                                          child: FlatButton(
                                            child: Text(
                                              "-",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 40,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            onPressed: () {},
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 80,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color(0XFF963521),
                                              width: 2,
                                            ),
                                            borderRadius: BorderRadius.all(
                                                const Radius.circular(5.0))),
                                        child: TextFormField(
                                          keyboardType: TextInputType.number,
                                          textAlign: TextAlign.center,
                                          initialValue: "1",
                                          decoration: InputDecoration(
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
                                        padding: EdgeInsets.only(left: 10),
                                        child: Container(
                                          height: 50,
                                          width: 50,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: Color(0XFF963521),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(5),
                                            ),
                                          ),
                                          child: FlatButton(
                                            child: Text(
                                              "+",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 40,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            onPressed: () {},
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text("Valor unitário",
                                    style: TextStyle(fontSize: 16)),
                                Padding(
                                    padding: EdgeInsets.all(16),
                                    child: Text(
                                      "CCR " + widget.item.price.toString(),
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0XFF963521)),
                                    )),
                                Text("Valor total",
                                    style: TextStyle(fontSize: 16)),
                                Padding(
                                    padding: EdgeInsets.all(16),
                                    child: Text(
                                      "CCR " + widget.item.price.toString(),
                                      style: TextStyle(
                                          fontSize: 30,
                                          color: Color(0XFF963521)),
                                    )),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 10, bottom: 10, left: 50, right: 50),
                                  child: Container(
                                    alignment: AlignmentDirectional.center,
                                    decoration: BoxDecoration(
                                      color: Color(0XFF963521),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5),
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.only(
                                              bottom: 20, top: 10),
                                          child: Text(
                                            "Saldo",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              bottom: 20, top: 10),
                                          child: Text(
                                            "CCR " + globals.saldo,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 40,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Container(
                                    height: 50,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Color(0XFF963521),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5),
                                      ),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        FlatButton(
                                          child: Text(
                                            "Confirmar compra",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          onPressed: () async {
                                            var res = await EthereumUtils
                                                .sendInformationToContract(
                                                    globals.privKey,
                                                    'transfer', [
                                              EthereumAddress.fromHex(
                                                  "0xDd6d37E29294A985E49fF301Acc80877fC24997F"),
                                              BigInt.from(double.parse(
                                                  widget.item.price.toString()))
                                            ]);

                                            print(res);
                                            await Future.delayed(
                                                Duration(seconds: 5));
                                            Navigator.pushNamedAndRemoveUntil(
                                                context,
                                                "/carteira",
                                                (r) => false);
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )),
              Positioned(
                child: Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        iconSize: 40,
                        icon: Icon(Icons.arrow_back_ios),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

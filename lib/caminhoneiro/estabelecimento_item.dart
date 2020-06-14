import 'package:player/utils/estabelecimento_model.dart';
import 'package:flutter/material.dart';
import 'estabelecimento.dart';
import 'avaliar.dart';
import 'ofertas.dart';

class EstabelecimentoItem extends StatefulWidget {
  EstabelecimentoModel estabelecimento;
  EstabelecimentoItem({this.estabelecimento});
  @override
  _EstabelecimentoItemState createState() => _EstabelecimentoItemState();
}

class _EstabelecimentoItemState extends State<EstabelecimentoItem> {

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
                            Center(
                              child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 10),
                                      child: Image.network(widget.estabelecimento.imageUrl),
                                    ),
                                    Text(widget.estabelecimento.name,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                                    Padding(
                                     padding: EdgeInsets.all(10),
                                     child: Text(widget.estabelecimento.description,
                                     textAlign: TextAlign.center,
                                     style: TextStyle(fontSize: 16)), 
                                    ),
                                    Wrap(
                                     // crossAxisAlignment: CrossAxisAlignment.center,
                                     // mainAxisAlignment: MainAxisAlignment.center,
                                      alignment: WrapAlignment.center,
                                      children: <Widget>[
                                       Padding(padding: EdgeInsets.only(right: 15),
                                       child: Icon(Icons.location_on,size: 40),),
                                       
                                       Text(widget.estabelecimento.location,style: TextStyle(fontSize: 18),textAlign: TextAlign.center,)
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                       Padding(padding: EdgeInsets.only(right: 15),
                                       child: Icon(Icons.phone,size: 40),),
                                       Text(widget.estabelecimento.phone,style: TextStyle(fontSize: 18),)
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Container(
                                            height: 50,
                                            width: 150,
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
                                                    "Avaliar",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  onPressed: () {
                                                    Navigator.push(context,
                                                        MaterialPageRoute(builder: (context) => Avaliar()));
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Container(
                                            height: 50,
                                            width: 150,
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
                                                    "Ver ofertas",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  onPressed: () {
                                                    Navigator.push(context,
                                                        MaterialPageRoute(builder: (context) => Oferta(estabelecimento: widget.estabelecimento,)));
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
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
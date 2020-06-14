import 'package:flutter/material.dart';
import 'oferta_comprar.dart';
import 'package:player/utils/estabelecimento_item_model.dart';
 
class OfertaItem extends StatefulWidget {
  EstabelecimentoItemModel item;
  OfertaItem({this.item});
  @override
  _OfertaItemState createState() => _OfertaItemState();
}

class _OfertaItemState extends State<OfertaItem> {
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
                                      child: Image.network(widget.item.imageUrl),
                                    ),
                                    Text(widget.item.name,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                                    Padding(
                                     padding: EdgeInsets.all(10),
                                     child: Text(widget.item.description,
                                     textAlign: TextAlign.center,
                                     style: TextStyle(fontSize: 16)), 
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16),
                                      child: Text("CCR " + widget.item.price.toString(),style: TextStyle(fontSize: 30,color: Color(0XFF963521)),)
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
                                                    "Comprar",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  onPressed: () {
                                                    Navigator.push(context,
                                                        MaterialPageRoute(builder: (context) => OfertaComprar()));
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
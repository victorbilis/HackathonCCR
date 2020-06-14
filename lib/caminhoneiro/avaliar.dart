import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';

class Avaliar extends StatefulWidget {
  @override
  _AvaliarState createState() => _AvaliarState();
}

class _AvaliarState extends State<Avaliar> {
  double rating = 0;
  double _rating = 0;

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
                                      child: Image.asset('assets/restaurante.png'),
                                    ),
                                    Text("Faça sua avaliação",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: RatingBar(
                                        onRatingChanged: (rating) => setState(() => _rating = rating),
                                        filledIcon: Icons.star,
                                        emptyIcon: Icons.star_border,
                                        halfFilledIcon: Icons.star_half,
                                        isHalfAllowed: true,
                                        filledColor: Color(0XFFffc107),
                                        halfFilledColor: Colors.amberAccent, 
                                        size: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16),
                                      child: Container(
                                        width: MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Color(0XFF963521),
                                            width: 2,
                                          ),
                                          borderRadius: BorderRadius.all(const Radius.circular(5.0))
                                    ),
                                    child:TextFormField(
                                        decoration: InputDecoration(
                                          labelStyle: TextStyle(
                                            color: Colors.black38,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18,
                                          ),
                                        ),
                                        keyboardType: TextInputType.multiline,
                                        maxLines: 4,
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                    ),
                                    Container(
                                            height: 50,
                                            width: 150,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              color: Color(0XFF963521),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(5),
                                              ),
                                            ),
                                            child:
                                                FlatButton(
                                                  child: Text(
                                                    "Enviar",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  onPressed: () {},
                                                ),
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
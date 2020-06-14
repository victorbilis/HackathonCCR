import 'package:flutter/material.dart';
import 'package:player/slides.dart';
import 'dart:io';
import 'qr_code1.dart';
import 'mi_band.dart';

class Tutorial extends StatefulWidget {
  @override
  _TutorialState createState() => _TutorialState();
}



class _TutorialState extends State<Tutorial> {

  List<SliderModel> mySLides = new List<SliderModel>();
  int slideIndex = 0;
  PageController controller;

  Widget _buildPageIndicator(bool isCurrentPage){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? Colors.grey : Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mySLides = getSlides();
    controller = new PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [const Color(0xff3C8CE7), const Color(0xff00EAFF)])),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    child: Image.asset('assets/background2.png'),
                  ),
                  Container(
                  height: MediaQuery.of(context).size.height - 200,
                  child: PageView(
                    controller: controller,
                    onPageChanged: (index) {
                      setState(() {
                        slideIndex = index;
                      });
                    },
                    children: <Widget>[
                      SlideTile(
                        imagePath: mySLides[0].getImageAssetPath(),
                        title: mySLides[0].getTitle(),
                        desc: mySLides[0].getDesc(),
                      ),
                      SlideTile(
                        imagePath: mySLides[1].getImageAssetPath(),
                        title: mySLides[1].getTitle(),
                        desc: mySLides[1].getDesc(),
                      ),
                      SlideTile(
                        imagePath: mySLides[2].getImageAssetPath(),
                        title: mySLides[2].getTitle(),
                        desc: mySLides[2].getDesc(),
                      ),
                      SlideTile(
                        imagePath: mySLides[3].getImageAssetPath(),
                        title: mySLides[3].getTitle(),
                        desc: mySLides[3].getDesc(),
                      ),
                      SlideTile(
                        imagePath: mySLides[4].getImageAssetPath(),
                        title: mySLides[4].getTitle(),
                        desc: mySLides[4].getDesc(),
                      )
                    ],
                  ),
                ),
                ]
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
        bottomSheet: slideIndex != 4 ? Container(
          margin: EdgeInsets.symmetric(vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton(
                onPressed: (){
                  controller.animateToPage(2, duration: Duration(milliseconds: 400), curve: Curves.linear);
                },
                splashColor: Colors.blue[50],
                child: Text(
                  "PULAR",
                  style: TextStyle( fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    _buildPageIndicator(false),
                  ],),
              ),
              FlatButton(
                onPressed: (){
                  print("this is slideIndex: $slideIndex");
                  controller.animateToPage(slideIndex + 1, duration: Duration(milliseconds: 500), curve: Curves.linear);
                },
                splashColor: Colors.blue[50],
                child: Text(
                  "PRÓXIMO",
                  style: TextStyle(color: Color(0xFF963521), fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ): InkWell(
          onTap: (){
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
          child: Container(
            height:  60,
            color: Color(0XFF963521),
            alignment: Alignment.center,
            child: Text(
              "INICIAR AGORA",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
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
            title: Center(child:Text('MI Band',style: TextStyle(fontSize: 18,)),),
            onTap: (){
              Navigator.pop(context);
              Navigator.pushReplacement(
                  context,
              MaterialPageRoute(
                  builder: (context) => MiBand())
              );
            },
          ),
          ListTile(
            title: Center(child:Text('QR Code',style: TextStyle(fontSize: 18,)),),
            onTap: (){
              Navigator.pop(context);
              Navigator.pushReplacement(
                  context,
              MaterialPageRoute(
                  builder: (context) => QrCode1())
              );
            },
          ),
        ],
      ),
    );
  }
}

class SlideTile extends StatelessWidget {
  String imagePath, title, desc;

  SlideTile({this.imagePath, this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(imagePath),
          SizedBox(
            height: 40,
          ),
          Text(desc, textAlign: TextAlign.center,style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18))
        ],
      ),
    );
  }
}


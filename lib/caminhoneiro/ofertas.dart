import 'package:flutter/material.dart';
import 'oferta_item.dart';

class Oferta extends StatefulWidget {
  @override
  _OfertaState createState() => _OfertaState();
}

class _OfertaState extends State<Oferta> with 
TickerProviderStateMixin{
  
List<Tab> tabList = List();
TabController _tabController;
@override
void initState() {
   tabList.add(new Tab(text:'CCR COINS',));
    tabList.add(new Tab(text:'VOUCHERS',));
    _tabController = new TabController(vsync: this, length: 
    tabList.length);
super.initState();
}
@override
void dispose() {
_tabController.dispose();
super.dispose();
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
                                      padding: EdgeInsets.only(bottom: 20),
                                      child: Image.asset('assets/restaurante.png'),
                                    ),
                                   Container(
                                      decoration: BoxDecoration(color: Colors.white),
                                      child: TabBar(
                                        controller: _tabController,
                                        indicatorColor: Colors.black,
                                        labelColor: Color(0XFF963521),
                                        indicatorSize: TabBarIndicatorSize.tab,
                                        tabs: tabList
                                      ),
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height,
                                      child:TabBarView(
                                        controller: _tabController,
                                        children: tabList.map((Tab tab){
                                          return _getPage(tab);
                                        }).toList(),
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

Widget _getPage(Tab tab){
  switch(tab.text){
    case 'CCR COINS': return Container(
                      height: MediaQuery.of(context).size.height,
                      child: ListView(
                        children: <Widget>[
                          ListTile(
                            title: Text('Kit Saúde',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            subtitle: Text('lorem ipsum'),
                            trailing: Text('CCR 50,00',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0XFF963521)),),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => OfertaItem()));
                            }
                          ),
                          ListTile(
                            title: Text('Kit Saúde',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            subtitle: Text('lorem ipsum'),
                            trailing: Text('CCR 50,00',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0XFF963521)),),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => OfertaItem()));
                            }
                          ),
                        ],
                      ),
                    );
    case 'VOUCHERS': return Container(
                      height: MediaQuery.of(context).size.height,
                      child: ListView(
                        children: <Widget>[
                          ListTile(
                            title: Text('Refeição Saudável',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            subtitle: Text('lorem ipsum'),
                            trailing: Text('R\$ 50,00',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0XFF963521)),),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => OfertaItem()));
                            }
                          ),
                          ListTile(
                            title: Text('Kit Saúde',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            subtitle: Text('lorem ipsum'),
                            trailing: Text('R\$ 50,00',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0XFF963521)),),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => OfertaItem()));
                            }
                          ),
                        ],
                      ),
                    );
  }
}

}
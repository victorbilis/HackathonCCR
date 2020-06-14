import 'package:player/caminhoneiro/estabelecimento_item.dart';
import 'package:flutter/material.dart';
import 'oferta_comprar.dart';
import 'oferta_item.dart';
import 'package:player/utils/estabelecimento_model.dart';
import 'package:player/utils/estabelecimento_item_model.dart';
import 'package:player/utils/estabelecimento_voucher_model.dart';
import 'package:player/utils/globals.dart' as globals;
import 'package:player/utils/ethereum_utils.dart';

class Oferta extends StatefulWidget {
  EstabelecimentoModel estabelecimento;
  Oferta({this.estabelecimento});
  @override
  _OfertaState createState() => _OfertaState();
}

class _OfertaState extends State<Oferta> with TickerProviderStateMixin {
  List<EstabelecimentoModel> estabelecimentos = List();
  List<EstabelecimentoItemModel> itens = List();
  List<EstabelecimentoVoucherModel> vouchers = List();

  List<Tab> tabList = List();
  TabController _tabController;
  @override
  void initState() {
    tabList.add(new Tab(
      text: 'CCR COINS',
    ));
    tabList.add(new Tab(
      text: 'OUTROS PRODUTOS',
    ));
    _tabController = new TabController(vsync: this, length: tabList.length);
    super.initState();
    getVouchers();
    getOfertas();
  }

  void getVouchers() async {
    var i = 0;
    vouchers.clear();

    var store = await EthereumUtils.getInformationFromContract(
        globals.privKey, 'getStoreVouchers', [BigInt.from(i)]);
    while (i < store[0].length) {
      vouchers.add(EstabelecimentoVoucherModel(
        name: store[0][i][0],
        price: double.parse(store[0][i][1].toString()),
      ));
      i++;
    }
    setState(() {});
  }

  void getOfertas() async {
    var i = 0;
    itens.clear();
    var store = await EthereumUtils.getInformationFromContract(
        globals.privKey, 'getStoreItems', [BigInt.from(i)]);
    while (i < store[0].length) {
      itens.add(EstabelecimentoItemModel(
          name: store[0][i][0],
          price: double.parse(store[0][i][1].toString()),
          imageUrl: store[0][i][2],
          description: store[0][i][3]));
      i++;
    }
    setState(() {});
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
                                Padding(
                                  padding: EdgeInsets.only(bottom: 20),
                                  child: Image.network(
                                      widget.estabelecimento.imageUrl),
                                ),
                                Container(
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                  child: TabBar(
                                      controller: _tabController,
                                      indicatorColor: Colors.black,
                                      labelColor: Color(0XFF963521),
                                      indicatorSize: TabBarIndicatorSize.tab,
                                      tabs: tabList),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height,
                                  child: TabBarView(
                                    controller: _tabController,
                                    children: tabList.map((Tab tab) {
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
              )),
              Positioned(
                top: 70,
                left: -10,
                right: -10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[Image.asset('assets/Ellipse.png')],
                ),
              ),
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

  Widget _getPage(Tab tab) {
    switch (tab.text) {
      case 'CCR COINS':
        return Container(
            //  height: MediaQuery.of(context).size.height,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: itens.length,
                itemBuilder: (context, index) {
                  return ListTile(
                      title: Text(
                        itens[index].name,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      trailing: Text(
                        'CCR ' + itens[index].price.toString(),
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0XFF963521)),
                      ),
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OfertaComprar(
                                      item: itens[index],
                                    )));
                      });
                }));
      case 'OUTROS PRODUTOS':
        return Container(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
                itemCount: vouchers.length,
                itemBuilder: (context, index) {
                  return ListTile(
                      title: Text(
                        vouchers[index].name,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      trailing: Text(
                        'R\$ ' + vouchers[index].price.toString(),
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0XFF963521)),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OfertaItem()));
                      });
                }));
    }
  }
}

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:player/utils/ethereum_utils.dart';
import 'package:player/utils/ethereum_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:player/signup.dart';
import 'package:player/caminhoneiro/main.dart';
import 'package:player/utils/globals.dart' as globals;

import 'caminhoneiro/carteira.dart';
import 'utils/ethereum_utils.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(primarySwatch: Colors.brown, indicatorColor: Colors.black),
      routes: {
        '/carteira': (context) => Home(),
      },
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController cpfController = TextEditingController(text: "123");
  TextEditingController passwordController = TextEditingController(text: "123");
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    carregar_carteira();
    Future.delayed(Duration.zero, () async {
      var wallet = await EthereumUtils.createWallet();
      print('pubkey=' + wallet['pubKey'].toString());
      print('privkey=' + wallet['privKey'].toString());
    });
  }

  void carregar_carteira() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var pubKey = preferences.getString('pubKey');
    var privKey = preferences.getString('privKey');
    if (pubKey == null) {
      var wallet = await EthereumUtils.createWallet();
      preferences.setString('pubKey', wallet['pubKey'].toString());
      preferences.setString('privKey', wallet['privKey'].toString());
      globals.pubKey = wallet['pubKey'].toString();
      globals.privKey = wallet['privKey'].toString();
    } else {
      globals.pubKey = pubKey;
      globals.privKey = privKey;
      globals.name = preferences.getString('name');
      /* Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context) => CaminhoneiroMain()));*/
    }
    print(pubKey);
    print(privKey);
  }

  void login() async {
    var res = await EthereumUtils.getInformationFromContract(globals.privKey,
        'login', [cpfController.text, passwordController.text]);
    if (res[0] == true) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => CaminhoneiroMain()));
    } else {
      AwesomeDialog(
              context: context,
              dialogType: DialogType.ERROR,
              animType: AnimType.BOTTOMSLIDE,
              tittle: 'Login inválido',
              desc: 'Verifique suas credenciais',
              btnCancelOnPress: () {},
              btnOkOnPress: () {})
          .show();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("assets/logo.png"),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              // autofocus: true,
              controller: cpfController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "CPF",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              // autofocus: true,
              keyboardType: TextInputType.text,
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),
            Container(
              height: 40,
              alignment: Alignment.centerRight,
              child: FlatButton(
                child: Text(
                  "Recuperar Senha",
                  textAlign: TextAlign.right,
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
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
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      /*     */
                      login();
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xFF3C5A99),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    child: Text(
                      "Login com Facebook",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Não tem uma conta?",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0XFFFFFFFF),
                border: Border.all(
                  color: Color(0XFF963521),
                  width: 2,
                ),
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
                      "Cadastrar",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0XFF963521),
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

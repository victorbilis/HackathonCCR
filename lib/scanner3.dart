import 'package:player/caminhoneiro/carteira.dart';
import 'package:player/utils/ethereum_utils.dart';
import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:player/utils/globals.dart' as globals;
import 'package:web3dart/credentials.dart';
import 'caminhoneiro/qr_code3.dart';
import 'utils/ethereum_utils.dart';

class Scanner3 extends StatefulWidget {
  @override
  _Scanner3State createState() => _Scanner3State();
}

class _Scanner3State extends State<Scanner3> {
  var address = "a";
  SharedPreferences prefs;
  bool viewCode = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SharedPreferences prefs;
    bool viewCode = false;
    Future.delayed(Duration.zero, () async {
      var result = await BarcodeScanner.scan();
      if(result != null){
        Navigator.pushReplacement(
            context,
        MaterialPageRoute(
            builder: (context) => QrCode3())
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

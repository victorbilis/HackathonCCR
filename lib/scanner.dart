import 'package:player/caminhoneiro/carteira.dart';
import 'package:player/utils/ethereum_utils.dart';
import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:player/utils/globals.dart' as globals;
import 'package:web3dart/credentials.dart';

import 'utils/ethereum_utils.dart';

class Scanner extends StatefulWidget {
  @override
  _ScannerState createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
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
      if (result != null && result != "") {
        var balance = await EthereumUtils.getInformationFromContract(result, 'myBalance', []);
        print(balance);
        var res = await EthereumUtils.sendInformationToContract(result, 'transfer', [
          EthereumAddress.fromHex(globals.pubKey),
          BigInt.from(double.parse(balance[0].toString()))
        ]);
        print(balance);
        print(res);
        await Future.delayed(Duration(seconds: 5));
        Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => Carteira())
        );
      }else{
        Navigator.pop(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

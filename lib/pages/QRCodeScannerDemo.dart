//import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_io_demo/main.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRCodeScanPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _BarcodeScanState();
  }

}

class _BarcodeScanState extends State<QRCodeScanPage>{
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  var _qrText = "";
  QRViewController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("二维码扫描测试"),),
      body: Container(width: double.infinity,height: double.infinity,child: Column(
          children: <Widget>[
            Expanded(
              flex: 5,
              child:             QRView(key: qrKey,
                onQRViewCreated: _onQRViewCreated,
              ),

            ),
            FlatButton(child: Text("result : ${_qrText}"),onPressed: ()async{
              try{

              }catch(e){
                print(e.toString());
              }
            },),
          ],
      ),),
    );
  }


  _onQRViewCreated(QRViewController controller){
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        _qrText = scanData;
      });
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_io_demo/main.dart';

class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MainPage"),),
      body:Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          textDirection: TextDirection.ltr,
          children: <Widget>[
            FlatButton(
              child: Text("ImagePicker"),
              onPressed: (){
                Navigator.of(context).pushNamed(App.imagePickerDemo);
              },
            ),
            FlatButton(
              child: Text("QRImageDemo"),
              onPressed: (){
                Navigator.of(context).pushNamed(App.qrImageDemo);
              },
            ),
            FlatButton(
              child: Text("BarcodeScanPage"),
              onPressed: (){
                Navigator.of(context).pushNamed(App.barcodeScanPage);
              },
            ),
          ],
        ),
      ),
    );
  }
}
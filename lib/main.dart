

import 'package:flutter/material.dart';

import 'package:flutter_io_demo/pages/ImagePickerDemo.dart';
import 'package:flutter_io_demo/pages/MainPage.dart';
import 'package:flutter_io_demo/pages/QRCodeScannerDemo.dart';
import 'package:flutter_io_demo/pages/QRImageDemo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  static const String mainPage = "mainPage";
  static const String imagePickerDemo = "imagePickerDemo";
  static const String qrImageDemo = "qrImageDemo";
  static const String barcodeScanPage = "BarcodeScanPage";
  static final routeMap = {
    mainPage:(context) => MainPage(),
    imagePickerDemo:(context) => ImagePickerDemo(),
    qrImageDemo:(context)=>QRImagePageDemo(),
    barcodeScanPage:(context)=>QRCodeScanPage()
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: routeMap,
      initialRoute: mainPage,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

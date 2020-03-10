import 'package:flutter/material.dart';
import 'package:flutter_io_demo/pages/ImagePickerDemo.dart';
import 'package:flutter_io_demo/pages/MainPage.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  static const String mainPage = "mainPage";
  static const String imagePickerDemo = "imagePickerDemo";
  static final routeMap = {
    mainPage:(context) => MainPage(),
    imagePickerDemo:(context) => ImagePickerDemo(),
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

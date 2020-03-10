import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_io_demo/main.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRImagePageDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _QRImageState();
  }


}

class _QRImageState extends State<QRImagePageDemo>{
  TextEditingController _controller = TextEditingController();
  String _str = "CAM";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("QrImage Demo"),),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          textDirection: TextDirection.ltr,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextField(controller: _controller,),
            QrImage(
              data: _str,
              size: 200,
            ),
            FlatButton(
              child: Text("生成二维码"),
              onPressed: (){
                setState(() {
                  _str = _controller.text.toString();
                });
              },
            )

          ],
        ),
      ),
    );
  }

}


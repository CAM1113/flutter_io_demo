import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ImagePickerDemoState();
  }
  
}

class _ImagePickerDemoState extends State<ImagePickerDemo>{
  var image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("ImagePickerDemo"),),
    body: Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: <Widget>[
          Container(
            width: 400,
            height: 300,
            child: getImageView(),
          ),
          FlatButton(child: Text("拍照"),onPressed: ()async{

            image = await ImagePicker.pickImage(source: ImageSource.camera);
            setState(() {

            });
          },),
          FlatButton(child: Text("选择"),onPressed: ()async{
            image = await ImagePicker.pickImage(source: ImageSource.gallery);
            setState(() {

            });
          },),
        ],
      ),
    ),);
  }

  Widget getImageView() {
    if(image == null){
      return Image.asset("images/vgg16.png",fit: BoxFit.cover,);
    }
    return Image.file(image,fit: BoxFit.cover,);
  }
  
}
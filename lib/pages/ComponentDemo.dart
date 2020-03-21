import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_io_demo/r.dart';

class ComponentPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<ComponentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: NestedScrollView(
        headerSliverBuilder: (BuildContext c, bool inner) {
          return [
            SliverAppBar(

              actions: <Widget>[
                InkWell(
                  child: Icon(Icons.more),
                  onTap: () {
                    print('click inwell');
                  },
                ),
                PopupMenuButton<String>(
                  tooltip: "menu",
                  onSelected: (s) {
                    print('onSelected$s');
                  },
                  onCanceled: () {
                    print("onCanceled");
                  },
                  itemBuilder: (BuildContext context) {
                    return [
                      PopupMenuItem(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.looks_one,
                              color: Colors.black,
                            ),
                            Text("item 1")
                          ],
                        ),
                        value: "item 1",
                      ),
                      PopupMenuItem(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.looks_two,
                              color: Colors.black,
                            ),
                            Text("item 2")
                          ],
                        ),
                        value: "select item 2",
                      ),
                      PopupMenuItem(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.looks_3,
                              color: Colors.black,
                            ),
                            Text("item 3")
                          ],
                        ),
                        value: "select item 3",
                      ),
                      PopupMenuItem(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.looks_4,
                              color: Colors.black,
                            ),
                            Text("item 4")
                          ],
                        ),
                        value: "select item 4",
                      ),
                      PopupMenuItem(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.looks_5,
                              color: Colors.black,
                            ),
                            Text("item 5")
                          ],
                        ),
                        value: "select item 5",
                      ),
                    ];
                  },
                ),
              ],
              expandedHeight: 200,
              floating: false,
              pinned: true,

              flexibleSpace: FlexibleSpaceBar(
                title: Text("ComponmentPage"),
                centerTitle: true,
                background: Image.asset(R.imagesHeadBg,fit: BoxFit.cover,),
              ),
            )
          ];
        },
        body: Container(
          color: Colors.amberAccent,
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    color: Colors.cyanAccent[100],
                    padding: EdgeInsets.all(20),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        color: Colors.grey,
                        width: 300,
                        height: 150,
                        child: Text(""),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.cyanAccent[100],
                    padding: EdgeInsets.all(20),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        color: Colors.grey,
                        width: 300,
                        height: 150,
                        child: Text(""),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.cyanAccent[100],
                    padding: EdgeInsets.all(20),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        color: Colors.grey,
                        width: 300,
                        height: 150,
                        child: Text(""),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.cyanAccent[100],
                    padding: EdgeInsets.all(20),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        color: Colors.grey,
                        width: 300,
                        height: 150,
                        child: Text(""),
                      ),
                    ),
                  ),

                ],
              ),
            )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('press FloatingActionButton');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10.0,
        color: Colors.cyan,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.mic),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.dashboard),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

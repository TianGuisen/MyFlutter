import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  String s1;

  Page2(String s1) {
    this.s1 = s1;
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _Page2(s1);
  }
}

class _Page2 extends State<Page2> {
  String s1;

  _Page2(String s1) {
    this.s1 = s1;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("第二个界面"),
      ),
      body: new Center(
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            new Container(
                child: GestureDetector(
              onTap: _onClick, //写入方法名称就可以了，但是是无参的
              child: Text("点击关闭页面返回数据:111,上个页面传过来的数据:" + s1),
            )),
          ])),
    );
  }

  void _onClick() {
    Navigator.of(context).pop('111');
  }
}

import 'package:flutter/material.dart';

import 'package:flutter_app/stateDemo/CheckPage.dart';
import 'package:flutter_app/test/LIstViewPage.dart';
import 'package:flutter_app/test/LayoutPage.dart';
import 'package:flutter_app/test/ScollPage.dart';
import 'package:flutter_app/util/RouteUtil.dart';
import 'package:flutter_app/test/Page2.dart';
import 'net/NetPage.dart';
import 'test/ContainerPage.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String result = "";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("标题栏"),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Container(
              width: 500,
              height: 24,
              margin: EdgeInsets.all(10.0), //设置全部margin是10
              child: GestureDetector(
                onTap: _onClick, //写入方法名称就可以了，但是是无参的
                child: Text(_counter.toString() + "点击增加数字", textAlign: TextAlign.left),
              )),
          Container(
              height: 24,
              margin: EdgeInsets.fromLTRB(5, 6, 7, 8), //分别设置margin
              child: GestureDetector(
                onTap: _startPage2, //写入方法名称就可以了，但是是无参的
                child: Text("跳转界面,传递数据:123,返回数据:${result}"),
              )),
//            Image.asset('image/sw_bt_off.png'),//显示本地图片
          Container(
              child: GestureDetector(
            onTap: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) {
                return new CheckPage();
              }));
            },
            child: Text("跳转到状态改变demo"),
          )),
          Container(
              child: GestureDetector(
            onTap: _startNetPage,
            child: Text("跳转网络请求界面"),
          )),
          Container(
              child: GestureDetector(
            onTap: _startContainerPage,
            child: Text("Container属性练习"),
          )),
          GestureDetector(
            onTap: _startlayoutPage,
            child: Text("布局练习"),
          ),
          GestureDetector(
            onTap: _startScollPage,
            child: Text("滑动练习"),
          ),
          GestureDetector(
            onTap: _startListViewPage,
            child: Text("listview练习"),
          ),
        ]));
  }

  void _onClick() {
    setState(() {
      _counter++;
    });
  }

  void _startPage2() {
    //导航到新路由
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return new Page2('123');
    })).then((value) {
      result = value == null ? "" : value;
    }, onError: (err) {});
  }

  void _startNetPage() {
    RouteUtil.start(context, NetPage());
  }

  void _startContainerPage() {
    RouteUtil.start(context, ContainerPage());
  }

  void _startlayoutPage() {
    RouteUtil.start(context, LayoutPage());
  }

  void _startScollPage() {
    RouteUtil.start(context, ScollPage());
  }
  void _startListViewPage() {
    RouteUtil.start(context, LIstViewPage());
  }
}

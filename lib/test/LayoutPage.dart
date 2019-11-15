import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar:  AppBar(
          title:  Text("标题栏"),
        ),
        body: Column(
          //测试Row对齐方式，排除Column默认居中对齐的干扰
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(" hello world "),
                Text(" I am Jack "),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              textDirection: TextDirection.rtl,
              children: <Widget>[
                Text(" hello world "),
                Text(" I am Jack "),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              verticalDirection: VerticalDirection.up, //表示底端对齐
              children: <Widget>[
                Text(
                  " hello world ",
                  style: TextStyle(fontSize: 30.0),
                ),
                Text(" I am Jack "),
              ],
            ),
            Container(
              width: 200,
              child: Flex(
                direction: Axis.horizontal,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 30,
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 30,
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
            ),
            Wrap(
              children: <Widget>[Text("xxxfwefwefweffffff" * 5)],
            ),
            Container(
              width: 400,
              color: Colors.amber,
              height: 200,
              child: Stack(
                alignment: Alignment.center, //未指定位置的居中
//                fit: StackFit.expand, //未定位widget占满Stack整个空间
                children: <Widget>[
                  Container(
                    child: Text("Hello world", style: TextStyle(color: Colors.white)),
                    color: Colors.red,
                  ),
                  Positioned(
                    left: 18.0,
                    child: Text("I am Jack"),
                  ),
                  Positioned(
                    top: 18.0,
                    child: Text("Your friend"),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: FlutterLogo(
                      size: 60,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: FlutterLogo(
                size: 60,
              ),
            ),
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container属性练习"),
      ),
      body: Column(
        children: <Widget>[
           Stack(
            children: <Widget>[
              Container(
                alignment:AlignmentDirectional.topStart,
                margin: EdgeInsets.all(10),
                color: Color.fromARGB(100, 100, 100, 100), //背景色argb
                child: Stack(
                  children: <Widget>[
                    Container(
                      alignment:AlignmentDirectional.topStart,
                      height: 50,
                      margin: EdgeInsets.only(top: 20),
                      color: Color.fromARGB(255, 0, 255, 255),
                      child: Text("aaaaaaaaa"),
                    )
                  ],
                ),
              ),
            ],
          ),
          
          
        ],
      ),
    );
  }
}

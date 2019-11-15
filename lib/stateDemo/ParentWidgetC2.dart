import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ParentWidgetC2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ParentWidgetC2();
  }
}

class _ParentWidgetC2 extends State<ParentWidgetC2> {
  bool state = false;
  bool showBorder = false;

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
        onTap: onParantClick,
        onTapDown: (_) {
          setState(() {
            showBorder = true;
          });
        },
        onTapUp: (_) {
          setState(() {
            showBorder = false;
          });
        },
        child: new Container(
          width: 200,
          height: 100,
          child: new Center(
              child: new Container(
                child: new Center(
                  child: new Text(state ? 'Active' : 'Inactive',
                      style: new TextStyle(fontSize: 32.0, color: Colors.white)),
                ),
            decoration: BoxDecoration(
              color: state ? Color(0xFFFF00FF) : Color(0xFFFF66FF),
              border: showBorder
                  ? Border.all(color: Color(0xFFFF0000), width: 10)
                  : null,
            ),
          )),
        ));
  }

  void onParantClick() {
    setState(() {
      state = !state;
    });
  }
}

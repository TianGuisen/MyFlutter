import 'package:flutter/widgets.dart';

import 'package:flutter_app/stateDemo/ParentWidgetC.dart';
import 'CheckPage2.dart';
import 'ParentWidgetC.dart';
import 'ParentWidgetC2.dart';

class CheckPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CheckPage();
  }
}

class _CheckPage extends State<CheckPage> {
  bool state = false;

  @override
  Widget build(BuildContext context) {
    return new Container(
        child: new Center(
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
          new Container(
              width: 200.0,
              height: 100.0,
              child: new GestureDetector(
                  onTap: _checkState,
                  child: new Container(
                      decoration: new BoxDecoration(
                          color:
                              state ? Color(0xFFFF0000) : Color(0xFFFFFF00))))),
          new Container(
              width: 200.0,
              height: 100.0,
              child: CheckPage2(
                state: state,
                onChanged: _onClick,
              )),
          new Container(width: 200.0, height: 100.0, child: ParentWidgetC()),
          new Container(width: 200.0, height: 100.0, child: ParentWidgetC2())
        ])));
  }

  void _checkState() {
    setState(() {
      state = !state;
    });
  }

  void _onClick(bool newValue) {
    setState(() {
      state = newValue;
    });
  }
}

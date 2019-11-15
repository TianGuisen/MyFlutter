import 'package:flutter/widgets.dart';

class CheckPage2 extends StatelessWidget {
  var onChanged;
  var state;

  CheckPage2({this.state: false, @required this.onChanged}) : super();

  @override
  Widget build(BuildContext context) {
    return new Container(
        child: new Center(
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
          new Container(
              width: 200.0,
              height: 200.0,
              child: new GestureDetector(
                  onTap: _onClick,
                  child: new Container(
                      decoration: new BoxDecoration(
                          color:
                              state ? Color(0xFFFF0000) : Color(0xFFFFFF00)))))
        ])));
  }

  void _onClick() {
    onChanged(!state);
  }
}

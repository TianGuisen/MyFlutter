import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';


class RouteUtil {
  static start(BuildContext context,Widget widget,[void result(Object)])  {
    Navigator.push(context, new MaterialPageRoute(builder: (_) {
      return widget;
    })).then((value) {
      result(value);
    });
  }
}

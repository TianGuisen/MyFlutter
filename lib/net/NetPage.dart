import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/models/GetInfo.dart';
import 'package:flutter_app/models/TestInfo1.dart';
import 'package:flutter_app/util/HttpUtil.dart';

import '../config.dart';

class NetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("网络请求页面"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: _get,
              child: Text("get请求"),
            ),
            GestureDetector(
              onTap: _post,
              child: Text("post请求"),
            )
          ],
        ),
      ),
    );
  }

  void _get() {
    getDio().get("http://app.bilibili.com/x/banner?plat=4&build=411007&channel=bilih5").then((data) {
      List<BannerInfo> info1 = GetInfo.fromJson(data.data).data;
      BannerInfo b1 = info1[0];
      var title=b1.title;
      logger.d(b1);
    });
  }

  void _post() {
    FormData formData = new FormData.from({
      "lon": "116.39277",
      "lat": "39.933748",
      "format": "2",
      "key": "edcb93e85da904553dad5a65ed166f48",
    });
    getDio().post("http://v.juhe.cn/weather/geo", data: formData).then((data) {
      TestInfo1 info1 = TestInfo1.fromJson(data.data);
      logger.d(info1);
    });
  }
}

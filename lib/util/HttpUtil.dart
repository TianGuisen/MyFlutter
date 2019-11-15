import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';

import '../config.dart';

//BaseOptions、Options、RequestOptions 都可以配置参数，优先级别依次递增，且可以根据优先级别覆盖参数
BaseOptions options = new BaseOptions(
//请求基地址,可以包含子路径
  baseUrl: "http://app.bilibili.com/",
//连接服务器超时时间，单位是毫秒.
  connectTimeout: 10000,
//响应流上前后两次接受到数据的间隔，单位为毫秒。
  receiveTimeout: 5000,
//Http请求头.
  headers: {
//do something
    "version": "1.0.0"
  },
//请求的Content-Type，默认值是[ContentType.json]. 也可以用ContentType.parse("application/x-www-form-urlencoded")
//      contentType: ContentType.json,
//表示期望以那种格式(方式)接受响应数据。接受三种类型 `json`, `stream`, `plain`, `bytes`. 默认值是 `json`,
//      responseType: ResponseType.json,
);

Dio getDio() {
  var dio = Dio(options);
  //Cookie管理
  dio.interceptors.add(CookieManager(CookieJar()));
  //添加拦截器
  dio.interceptors.add(InterceptorsWrapper(onRequest: (RequestOptions options) {
    // Do something before request is sent
    return options; //continue
  }, onResponse: (Response response) {
    //      response.data; 响应体
//      response.headers; 响应头
//      response.request; 请求体
//      response.statusCode; 状态码
    if (response.request.method == "GET") {
      logger.d('code=' +
          response.statusCode.toString() +
          '|method=' +
          response.request.method +
          '|url=' +
          response.request.path);
    } else {
      FormData data = response.request.data;
      String sb = "";
      data.forEach((key, value) {
        sb = sb + key + "=" + value + ",";
      });
      var sb2=sb.substring(0, sb.length-1);
      logger.d('code=' +
          response.statusCode.toString() +
          '|method=' +
          response.request.method +
          '|url=' +
          response.request.path +
          '\nparam={' +
          sb2 +
          '}');
    }
    logger.d(response.data);
    // Do something with response data
    return response; // continue
  }, onError: (DioError e) {
    // Do something with response error
    return e; //continue
  }));
  return dio;
}

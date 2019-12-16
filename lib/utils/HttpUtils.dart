import 'package:dio/dio.dart';
///https://www.showapi.com/?renqun_youhua=259537
///https://pub.dev/packages/dio
///https://caijinglong.github.io/json2dart/index.html
BaseOptions _options = new BaseOptions(
  baseUrl: "https://www.tianqiapi.com/",
  connectTimeout: 5000,
  receiveTimeout: 3000,
);
Dio dio = new Dio(_options);
void initHttpClient(){
  dio.interceptors.add(LogInterceptor(responseBody: true)); //开启请求日志
}

class HttpUtils{
  static Future get(String url, [Map<String, dynamic> params]) async {
    var response;
    if (params != null) {
      response = await dio.get(url, queryParameters: params);
    } else {
      response = await dio.get(url);
    }
    return response.data;
  }

  static Future post(String url, Map<String, dynamic> params) async {
    var response = await dio.post(url, data: params);
    return response.data;
  }
}
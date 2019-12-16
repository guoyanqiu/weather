

import 'package:wheather_demo/beans/weather.dart';

import 'HttpUtils.dart';

class DataUtils{
  static Future getWeatherData(String cityName) async {
    Map<String,String> params = {"appid":"62472739","appsecret":"ZCdZQe5r","version":"v6","city":cityName};
    var response = await HttpUtils.get('api',params);

    return  Weather.fromJson(response);
  }
}

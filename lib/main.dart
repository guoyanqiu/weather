import 'package:city_pickers/city_pickers.dart';
import 'package:flutter/material.dart';
import 'utils/DataUtils.dart';
import 'beans/weather.dart';
import 'utils/HttpUtils.dart';
//https://www.tianqiapi.com/?action=v1
void main() async {
  initHttpClient();
  runApp(new MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '天气',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '城市天气'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
   String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Weather _wheather = null;
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:_buildWeatherContent(context),
    );
  }

  Widget _buildWeatherContent(BuildContext context){
    if(_wheather==null){
      return  Column(
        children: <Widget>[
          Text(" 请选择城市 "),
          RaisedButton(
            onPressed: () {this.show(context);
            },
            child: Text("选择城市"),
          )
        ],
      );
    }
    return Column(
      children: <Widget>[
        Text(_wheather.city  + "   "+_wheather.date + "  "+_wheather.week),
        Text("天气：${_wheather.wea}  温度：${_wheather.tem}℃ 风力：${_wheather.winSpeed}"),
        Text("建议:${_wheather.airTips}"),
        RaisedButton(
          onPressed: () {this.show(context);
          },
          child: Text("切换城市"),
        )
      ],
    );
  }

  show(context) async {
    Result selectedCity  = await CityPickers.showCityPicker(
      context: context,
      // locationCode: '640221',
      height: 400,
    );
    String name = selectedCity.cityName;
    int shiIndex=-1;
    if(name.contains("市")){
      shiIndex = name.indexOf("市");

    }else if(name.contains("城")){
      shiIndex = name.indexOf("城区");
    }
    if(shiIndex!=-1){
      name  = name.substring(0,shiIndex);
    }
    print("城市信息==="+selectedCity.toString());
    widget.title = selectedCity.cityName;
    DataUtils.getWeatherData(name).then((weather){
        setState(() {
          _wheather = weather;
        });
    });
  }
}

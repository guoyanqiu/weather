import 'package:json_annotation/json_annotation.dart';

part 'weather.g.dart';


@JsonSerializable()
class Weather extends Object {

  @JsonKey(name: 'cityid')
  String cityid;

  @JsonKey(name: 'date')
  String date;

  @JsonKey(name: 'week')
  String week;

  @JsonKey(name: 'update_time')
  String updateTime;

  @JsonKey(name: 'city')
  String city;

  @JsonKey(name: 'cityEn')
  String cityEn;

  @JsonKey(name: 'country')
  String country;

  @JsonKey(name: 'countryEn')
  String countryEn;

  @JsonKey(name: 'wea')
  String wea;

  @JsonKey(name: 'wea_img')
  String weaImg;

  @JsonKey(name: 'tem')
  String tem;

  @JsonKey(name: 'tem1')
  String tem1;

  @JsonKey(name: 'tem2')
  String tem2;

  @JsonKey(name: 'win')
  String win;

  @JsonKey(name: 'win_speed')
  String winSpeed;

  @JsonKey(name: 'win_meter')
  String winMeter;

  @JsonKey(name: 'humidity')
  String humidity;

  @JsonKey(name: 'visibility')
  String visibility;

  @JsonKey(name: 'pressure')
  String pressure;

  @JsonKey(name: 'air')
  String air;

  @JsonKey(name: 'air_pm25')
  String airPm25;

  @JsonKey(name: 'air_level')
  String airLevel;

  @JsonKey(name: 'air_tips')
  String airTips;

  @JsonKey(name: 'alarm')
  Alarm alarm;

  Weather(this.cityid,this.date,this.week,this.updateTime,this.city,this.cityEn,this.country,this.countryEn,this.wea,this.weaImg,this.tem,this.tem1,this.tem2,this.win,this.winSpeed,this.winMeter,this.humidity,this.visibility,this.pressure,this.air,this.airPm25,this.airLevel,this.airTips,this.alarm,);

  factory Weather.fromJson(Map<String, dynamic> srcJson) => _$WeatherFromJson(srcJson);

  Map<String, dynamic> toJson() => _$WeatherToJson(this);

}


@JsonSerializable()
class Alarm extends Object {

  @JsonKey(name: 'alarm_type')
  String alarmType;

  @JsonKey(name: 'alarm_level')
  String alarmLevel;

  @JsonKey(name: 'alarm_content')
  String alarmContent;

  Alarm(this.alarmType,this.alarmLevel,this.alarmContent,);

  factory Alarm.fromJson(Map<String, dynamic> srcJson) => _$AlarmFromJson(srcJson);

  Map<String, dynamic> toJson() => _$AlarmToJson(this);

}

  

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return Weather(
    json['cityid'] as String,
    json['date'] as String,
    json['week'] as String,
    json['update_time'] as String,
    json['city'] as String,
    json['cityEn'] as String,
    json['country'] as String,
    json['countryEn'] as String,
    json['wea'] as String,
    json['wea_img'] as String,
    json['tem'] as String,
    json['tem1'] as String,
    json['tem2'] as String,
    json['win'] as String,
    json['win_speed'] as String,
    json['win_meter'] as String,
    json['humidity'] as String,
    json['visibility'] as String,
    json['pressure'] as String,
    json['air'] as String,
    json['air_pm25'] as String,
    json['air_level'] as String,
    json['air_tips'] as String,
    json['alarm'] == null
        ? null
        : Alarm.fromJson(json['alarm'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'cityid': instance.cityid,
      'date': instance.date,
      'week': instance.week,
      'update_time': instance.updateTime,
      'city': instance.city,
      'cityEn': instance.cityEn,
      'country': instance.country,
      'countryEn': instance.countryEn,
      'wea': instance.wea,
      'wea_img': instance.weaImg,
      'tem': instance.tem,
      'tem1': instance.tem1,
      'tem2': instance.tem2,
      'win': instance.win,
      'win_speed': instance.winSpeed,
      'win_meter': instance.winMeter,
      'humidity': instance.humidity,
      'visibility': instance.visibility,
      'pressure': instance.pressure,
      'air': instance.air,
      'air_pm25': instance.airPm25,
      'air_level': instance.airLevel,
      'air_tips': instance.airTips,
      'alarm': instance.alarm,
    };

Alarm _$AlarmFromJson(Map<String, dynamic> json) {
  return Alarm(
    json['alarm_type'] as String,
    json['alarm_level'] as String,
    json['alarm_content'] as String,
  );
}

Map<String, dynamic> _$AlarmToJson(Alarm instance) => <String, dynamic>{
      'alarm_type': instance.alarmType,
      'alarm_level': instance.alarmLevel,
      'alarm_content': instance.alarmContent,
    };

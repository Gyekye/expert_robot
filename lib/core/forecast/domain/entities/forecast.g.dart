// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Forecast _$$_ForecastFromJson(Map<String, dynamic> json) => _$_Forecast(
      weather: (json['weather'] as List<dynamic>)
          .map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
      base: json['base'] as String,
      visibility: json['visibility'] as int,
      wind: Wind.fromJson(json['wind'] as Map<String, dynamic>),
      dt: json['dt'] as int,
      sys: Sys.fromJson(json['sys'] as Map<String, dynamic>),
      timezone: json['timezone'] as int,
      id: json['id'] as int,
      name: json['name'] as String,
      cod: json['cod'] as int,
      main: Main.fromJson(json['main'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ForecastToJson(_$_Forecast instance) =>
    <String, dynamic>{
      'weather': instance.weather,
      'base': instance.base,
      'visibility': instance.visibility,
      'wind': instance.wind,
      'dt': instance.dt,
      'sys': instance.sys,
      'timezone': instance.timezone,
      'id': instance.id,
      'name': instance.name,
      'cod': instance.cod,
      'main': instance.main,
    };

_$_Weather _$$_WeatherFromJson(Map<String, dynamic> json) => _$_Weather(
      main: json['main'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$$_WeatherToJson(_$_Weather instance) =>
    <String, dynamic>{
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

_$_Wind _$$_WindFromJson(Map<String, dynamic> json) => _$_Wind(
      speed: (json['speed'] as num).toDouble(),
      deg: json['deg'] as int,
    );

Map<String, dynamic> _$$_WindToJson(_$_Wind instance) => <String, dynamic>{
      'speed': instance.speed,
      'deg': instance.deg,
    };

_$_Sys _$$_SysFromJson(Map<String, dynamic> json) => _$_Sys(
      country: json['country'] as String,
      sunrise: json['sunrise'] as int,
      sunset: json['sunset'] as int,
    );

Map<String, dynamic> _$$_SysToJson(_$_Sys instance) => <String, dynamic>{
      'country': instance.country,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };

_$_Main _$$_MainFromJson(Map<String, dynamic> json) => _$_Main(
      temp: (json['temp'] as num).toDouble(),
      pressure: json['pressure'] as int,
      humidity: json['humidity'] as int,
    );

Map<String, dynamic> _$$_MainToJson(_$_Main instance) => <String, dynamic>{
      'temp': instance.temp,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
    };

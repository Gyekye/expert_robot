// flutter packages run build_runner build --delete-conflicting-outputs
// Forecast entity
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast.freezed.dart';

part 'forecast.g.dart';

@freezed
class Forecast with _$Forecast {
  const factory Forecast({
    required List<Weather> weather,
    required String base,
    required Main main,
    required int visibility,
    required Wind wind,
    required int dt,
    required Sys sys,
    required int timezone,
    required int id,
    required String name,
    required int cod,
  }) = _Forecast;

  factory Forecast.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json);
}

/// Weather part of forecast
@freezed
class Weather with _$Weather {
  const factory Weather({
    required String main,
    required String description,
    required String icon,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}

/// Wind part of forecast
@freezed
class Wind with _$Wind {
  const factory Wind({
    required double speed,
    required int deg,
  }) = _Wind;

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
}

/// System part of forecast
@freezed
class Sys with _$Sys {
  const factory Sys({
    required int type,
    required int id,
    required String country,
    required int sunrise,
    required int sunset,
  }) = _Sys;

  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);
}

/// Main part of forecast
@freezed
class Main with _$Main {
  const factory Main({
    required double temp,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'feelslike') required double feelsLike,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'tempmin') required double tempMin,
    required int tempMax,
    required int pressure,
    required int humidity,
  }) = _Main;

  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherModelImpl _$$WeatherModelImplFromJson(Map<String, dynamic> json) =>
    _$WeatherModelImpl(
      coord: Coordinates.fromJson(json['coord'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>)
          .map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
      main: MainData.fromJson(json['main'] as Map<String, dynamic>),
      wind: Wind.fromJson(json['wind'] as Map<String, dynamic>),
      dt: json['dt'] as int,
      timezone: json['timezone'] as int,
    );

Map<String, dynamic> _$$WeatherModelImplToJson(_$WeatherModelImpl instance) =>
    <String, dynamic>{
      'coord': instance.coord,
      'weather': instance.weather,
      'main': instance.main,
      'wind': instance.wind,
      'dt': instance.dt,
      'timezone': instance.timezone,
    };

_$CoordinatesImpl _$$CoordinatesImplFromJson(Map<String, dynamic> json) =>
    _$CoordinatesImpl(
      lon: (json['lon'] as num).toDouble(),
      lat: (json['lat'] as num).toDouble(),
    );

Map<String, dynamic> _$$CoordinatesImplToJson(_$CoordinatesImpl instance) =>
    <String, dynamic>{
      'lon': instance.lon,
      'lat': instance.lat,
    };

_$WeatherImpl _$$WeatherImplFromJson(Map<String, dynamic> json) =>
    _$WeatherImpl(
      id: json['id'] as int,
      main: json['main'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$$WeatherImplToJson(_$WeatherImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

_$CurrentWeatherImpl _$$CurrentWeatherImplFromJson(Map<String, dynamic> json) =>
    _$CurrentWeatherImpl(
      temp: (json['temp'] as num).toDouble(),
      feelsLike: (json['feels_like'] as num).toDouble(),
      pressure: (json['pressure'] as num).toDouble(),
    );

Map<String, dynamic> _$$CurrentWeatherImplToJson(
        _$CurrentWeatherImpl instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'pressure': instance.pressure,
    };

_$WindImpl _$$WindImplFromJson(Map<String, dynamic> json) => _$WindImpl(
      speed: (json['speed'] as num).toDouble(),
    );

Map<String, dynamic> _$$WindImplToJson(_$WindImpl instance) =>
    <String, dynamic>{
      'speed': instance.speed,
    };

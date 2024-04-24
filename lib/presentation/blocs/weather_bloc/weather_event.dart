part of 'weather_bloc.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.getLocations({required String name}) = _GetLocations;
  const factory WeatherEvent.getWeather({required double lat, required double long, String? name}) = _GetWeather;
}
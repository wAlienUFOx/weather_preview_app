import 'package:weather_preview_app/data/models/weather/location_model.dart';
import 'package:weather_preview_app/data/models/weather/weather_model.dart';

abstract class WeatherRepository {
  Future<List<LocationModel>> getLocationsByName(String name);
  Future<LocationModel> getLocationByCoordinates(double lat, double long);
  Future<WeatherModel> getWeather(double lat, double long);
}
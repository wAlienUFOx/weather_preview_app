import 'package:weather_preview_app/data/data_sources/remote/weather_api_client.dart';
import 'package:weather_preview_app/domain/repositories/weather_repository.dart';

import '../models/weather/location_model.dart';
import '../models/weather/weather_model.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  WeatherRepositoryImpl(this._weatherApiClient);

  final WeatherApiClient _weatherApiClient;

  @override
  Future<List<LocationModel>> getLocationsByName (String name) async {
    try {
      return await _weatherApiClient.getLocationByName(name, 5);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<LocationModel> getLocationByCoordinates (double lat, double long) async {
    try {
      final response = await _weatherApiClient.getLocationByCoordinates(lat, long, 1);
      return response.first;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<WeatherModel> getWeather(double lat, double long) async {
    try {
      return await _weatherApiClient.getWeather(lat, long);
    } catch (e) {
      rethrow;
    }
  }
}
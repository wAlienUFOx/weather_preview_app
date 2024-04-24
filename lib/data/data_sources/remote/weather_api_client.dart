import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather_preview_app/data/models/weather/location_model.dart';
import 'package:weather_preview_app/data/models/weather/weather_model.dart';

import 'interceptors/authentification.dart';

part 'weather_api_client.g.dart';

@RestApi(baseUrl: '')
abstract class WeatherApiClient {
  factory WeatherApiClient(Dio dio, {String baseUrl}) = _WeatherApiClient;

  factory WeatherApiClient.create({String? vehicleApiUrl, required Dio dio}) {
    dio.interceptors.add(TokenInterceptor());
    if (vehicleApiUrl != null) {
      return WeatherApiClient(dio, baseUrl: vehicleApiUrl);
    }

    return WeatherApiClient(dio);
  }

  //* Локация

  //GET /geo/1.0/direct? локация по названию
  @GET('/geo/1.0/direct?')
  Future<List<LocationModel>> getLocationByName(@Query('q') String cityName, @Query('limit') int limit);

  //GET /geo/1.0/reverse? локация по координатам
  @GET('/geo/1.0/reverse?')
  Future<List<LocationModel>> getLocationByCoordinates(
      @Query('lat') double lat, @Query('lon') double lon, @Query('limit') int limit);

  //* Погода

  //GET /data/2.5/weather? погода по координатам
  @GET('/data/2.5/weather?')
  Future<WeatherModel> getWeather(
    @Query('lat') double lat,
    @Query('lon') double lon,
  );
}

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:weather_preview_app/data/data_sources/remote/weather_api_client.dart';
import 'package:weather_preview_app/data/repositories/weather_repository_impl.dart';
import 'package:weather_preview_app/domain/repositories/weather_repository.dart';
import 'package:weather_preview_app/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:weather_preview_app/presentation/blocs/favorites_bloc/favorites_bloc.dart';
import 'package:weather_preview_app/presentation/blocs/weather_bloc/weather_bloc.dart';

class InjectionContainer {
  //Dio
  static final Dio dio = Dio();

  // Clients
  static final WeatherApiClient weatherApiClient = WeatherApiClient.create(
    vehicleApiUrl: dotenv.env['WEATHER_API_URL'],
    dio: dio,
  );

  // Dependencies
  static final WeatherRepository weatherRepository = WeatherRepositoryImpl(weatherApiClient);

  //Blocs
  static final WeatherBloc weatherBloc = WeatherBloc(weatherRepository);
  static final FavoritesBloc favoritesBloc = FavoritesBloc();
  static final AuthBloc authBloc = AuthBloc(favoritesBloc);
}

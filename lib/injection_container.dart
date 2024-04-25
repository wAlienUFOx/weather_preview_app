import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_preview_app/data/data_sources/remote/weather_api_client.dart';
import 'package:weather_preview_app/data/repositories/weather_repository_impl.dart';
import 'package:weather_preview_app/domain/repositories/weather_repository.dart';
import 'package:weather_preview_app/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:weather_preview_app/presentation/blocs/favorites_bloc/favorites_bloc.dart';
import 'package:weather_preview_app/presentation/blocs/weather_bloc/weather_bloc.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  final apiToken = dotenv.env['WEATHER_API_TOKEN'];
  final apiUrl = dotenv.env['WEATHER_API_URL'];

  if (apiToken == null || apiUrl == null) {
    throw Exception("One or more environment variables (apiToken, apiUrl, wsUrl) are missing.");
  }

  //Dio
  sl.registerSingleton<Dio>(Dio());

  // Clients
  sl.registerSingleton<WeatherApiClient>(WeatherApiClient.create(vehicleApiUrl: apiUrl, dio: sl()));

  // Dependencies
  sl.registerLazySingleton<WeatherRepository>(() => WeatherRepositoryImpl(sl()));

  final FavoritesBloc favoritesBloc = FavoritesBloc();

  //Blocs
  sl.registerFactory<WeatherBloc>(() => WeatherBloc(sl()));
  sl.registerFactory<FavoritesBloc>(() => favoritesBloc);
  sl.registerFactory<AuthBloc>(() => AuthBloc(favoritesBloc));
}
part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const WeatherState._();

  const factory WeatherState.initial() = _Initial;

  const factory WeatherState.loadingLocations() = _LoadingLocations;

  const factory WeatherState.loadingWeather() = _LoadingWeather;

  const factory WeatherState.loadedLocation({required List<LocationModel> locations}) = _LoadedLocation;

  const factory WeatherState.loadedWeather({required WeatherModel weather, required String name}) = _LoadedWeather;

  const factory WeatherState.error(String msg) = _Error;

  bool get isLoadingLocations => map(
        initial: (_) => false,
        loadingLocations: (_) => true,
        loadingWeather: (_) => false,
        loadedLocation: (_) => false,
        loadedWeather: (_) => false,
        error: (_) => false,
      );

  bool get isLoadingWeather => map(
        initial: (_) => false,
        loadingLocations: (_) => false,
        loadingWeather: (_) => true,
        loadedLocation: (_) => false,
        loadedWeather: (_) => false,
        error: (_) => false,
      );

  List<LocationModel>? get locations => map(
        initial: (_) => null,
        loadingLocations: (_) => null,
        loadingWeather: (_) => null,
        loadedLocation: (state) => state.locations,
        loadedWeather: (_) => null,
        error: (_) => null,
      );

  WeatherModel? get weather => map(
        initial: (_) => null,
        loadingLocations: (_) => null,
        loadingWeather: (_) => null,
        loadedLocation: (_) => null,
        loadedWeather: (state) => state.weather,
        error: (_) => null,
      );

  String? get name => map(
    initial: (_) => null,
    loadingLocations: (_) => null,
    loadingWeather: (_) => null,
    loadedLocation: (_) => null,
    loadedWeather: (state) => state.name,
    error: (_) => null,
  );

  bool get isError => map(
        initial: (_) => false,
        loadingLocations: (_) => false,
        loadingWeather: (_) => false,
        loadedLocation: (_) => false,
        loadedWeather: (_) => false,
        error: (_) => true,
      );
}

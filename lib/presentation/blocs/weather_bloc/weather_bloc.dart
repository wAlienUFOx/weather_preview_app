import 'dart:async';
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_preview_app/data/models/weather/location_model.dart';
import 'package:weather_preview_app/domain/repositories/weather_repository.dart';

import '../../../data/models/weather/weather_model.dart';

part 'weather_bloc.freezed.dart';
part 'weather_event.dart';
part 'weather_state.dart';


class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc(WeatherRepository weatherRepository)
      : _weatherRepository = weatherRepository,
        super(const _Initial()) {
    on<WeatherEvent>(
          (event, emit) async {
        await event.map(
          getWeather: (event) async => await _getWeather(event, emit),
          getLocations: (event) async => await _getLocations(event, emit),
        );
      },
    );
  }

  final WeatherRepository _weatherRepository;

  FutureOr<void> _getLocations(_GetLocations event, Emitter<WeatherState> emit) async {
    try {
      emit(const WeatherState.loadingLocations());
      final locations = await _weatherRepository.getLocationsByName(event.name);
      emit(WeatherState.loadedLocation(locations: locations));
    } catch (e) {
      log(e.toString());
      emit(WeatherState.error(e.toString()));
    }
  }

  FutureOr<void> _getWeather(_GetWeather event, Emitter<WeatherState> emit) async {
    try {
      emit(const WeatherState.loadingWeather());
      late String name;
      if (event.name == null) {
        final location = await _weatherRepository.getLocationByCoordinates(event.lat, event.long);
        name = location.name;
      } else {
        name = event.name!;
      }
      final weather = await _weatherRepository.getWeather(event.lat, event.long);
      emit(WeatherState.loadedWeather(weather: weather, name: name));
    } catch (e) {
      log(e.toString());
      emit(WeatherState.error(e.toString()));
    }
  }
}
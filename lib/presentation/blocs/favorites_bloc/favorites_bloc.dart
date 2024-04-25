import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_preview_app/data/models/favorites/favorite_model.dart';
import 'package:weather_preview_app/data/models/weather/weather_model.dart';

import '../../../data/data_sources/local/shared_prefs.dart';

part 'favorites_event.dart';

part 'favorites_state.dart';

part 'favorites_bloc.freezed.dart';

class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  FavoritesBloc() : super(const _Initial()) {
    on<FavoritesEvent>((event, emit) async {
      await event.map(
        fetch: (event) async => _fetch(event, emit),
        add: (event) async => _add(event, emit),
        remove: (event) async => _remove(event, emit),
      );
    });
  }

  late String userNumber;
  late Map<String, List<FavoriteModel>> allFavorites;

  void _fetch(_Fetch event, Emitter<FavoritesState> emit) {
    userNumber = event.userNumber;
    allFavorites = SharedPrefs.favorites
        .map((key, value) => MapEntry(key, (value as List<dynamic>).map((e) => FavoriteModel.fromJson(e)).toList()));
    emit(FavoritesState.loaded(favoritesPlaces: allFavorites[userNumber] ?? []));
  }

  void _add(_Add event, Emitter<FavoritesState> emit) {
    final List<FavoriteModel> userFavorites = List.from(allFavorites[userNumber] ?? []);
    userFavorites.add(FavoriteModel(name: event.name, lat: event.coordinates.lat, lon: event.coordinates.lon));
    allFavorites[userNumber] = userFavorites;
    SharedPrefs.favorites = allFavorites.map((key, value) => MapEntry(key.toString(), value));
    emit(FavoritesState.loaded(favoritesPlaces: allFavorites[userNumber] ?? []));
  }

  void _remove(_Remove event, Emitter<FavoritesState> emit) {
    final List<FavoriteModel> userFavorites = List.from(allFavorites[userNumber] ?? []);
    userFavorites.remove(FavoriteModel(name: event.name, lat: event.coordinates.lat, lon: event.coordinates.lon));
    allFavorites[userNumber] = userFavorites;
    SharedPrefs.favorites = allFavorites.map((key, value) => MapEntry(key.toString(), value));
    emit(FavoritesState.loaded(favoritesPlaces: allFavorites[userNumber] ?? []));
  }
}

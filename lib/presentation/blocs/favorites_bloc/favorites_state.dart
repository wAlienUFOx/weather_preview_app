part of 'favorites_bloc.dart';

@freezed
class FavoritesState with _$FavoritesState {
  const FavoritesState._();

  const factory FavoritesState.initial() = _Initial;

  const factory FavoritesState.loaded({required List<FavoriteModel> favoritesPlaces}) = _Loaded;

  List<FavoriteModel>? get favoritesPlaces =>
      map(
        initial: (_) => null,
        loaded: (state) => state.favoritesPlaces,
      );
}
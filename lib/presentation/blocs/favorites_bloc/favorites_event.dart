part of 'favorites_bloc.dart';

@freezed
class FavoritesEvent with _$FavoritesEvent {
  const factory FavoritesEvent.fetch({required String userNumber}) = _Fetch;
  const factory FavoritesEvent.remove({required String name, required Coordinates coordinates}) = _Remove;
  const factory FavoritesEvent.add({required String name, required Coordinates coordinates}) = _Add;
}
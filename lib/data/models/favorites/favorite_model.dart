import 'package:freezed_annotation/freezed_annotation.dart';
part 'favorite_model.g.dart';

part 'favorite_model.freezed.dart';

@freezed
class FavoriteModel with _$FavoriteModel {
  const factory FavoriteModel({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "lat") required double lat,
    @JsonKey(name: "lon") required double lon,
  }) = _FavoriteModel;

  factory FavoriteModel.fromJson(Map<String, dynamic> json) => _$FavoriteModelFromJson(json);
}
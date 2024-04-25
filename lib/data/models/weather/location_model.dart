import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_model.freezed.dart';
part 'location_model.g.dart';

@freezed
class LocationModel with _$LocationModel {
  const factory LocationModel({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "local_names") required Map<String, String>? localNames,
    @JsonKey(name: "lat") required double lat,
    @JsonKey(name: "lon") required double lon,
    @JsonKey(name: "country") required String? country,
    @JsonKey(name: "state") required String? state,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) => _$LocationModelFromJson(json);
}
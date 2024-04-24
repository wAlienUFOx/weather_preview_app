// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherEvent {
  String? get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) getLocations,
    required TResult Function(double lat, double long, String? name) getWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? getLocations,
    TResult? Function(double lat, double long, String? name)? getWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? getLocations,
    TResult Function(double lat, double long, String? name)? getWeather,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLocations value) getLocations,
    required TResult Function(_GetWeather value) getWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLocations value)? getLocations,
    TResult? Function(_GetWeather value)? getWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLocations value)? getLocations,
    TResult Function(_GetWeather value)? getWeather,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherEventCopyWith<WeatherEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res, WeatherEvent>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res, $Val extends WeatherEvent>
    implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name!
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetLocationsImplCopyWith<$Res>
    implements $WeatherEventCopyWith<$Res> {
  factory _$$GetLocationsImplCopyWith(
          _$GetLocationsImpl value, $Res Function(_$GetLocationsImpl) then) =
      __$$GetLocationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$GetLocationsImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$GetLocationsImpl>
    implements _$$GetLocationsImplCopyWith<$Res> {
  __$$GetLocationsImplCopyWithImpl(
      _$GetLocationsImpl _value, $Res Function(_$GetLocationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$GetLocationsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetLocationsImpl implements _GetLocations {
  const _$GetLocationsImpl({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'WeatherEvent.getLocations(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLocationsImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLocationsImplCopyWith<_$GetLocationsImpl> get copyWith =>
      __$$GetLocationsImplCopyWithImpl<_$GetLocationsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) getLocations,
    required TResult Function(double lat, double long, String? name) getWeather,
  }) {
    return getLocations(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? getLocations,
    TResult? Function(double lat, double long, String? name)? getWeather,
  }) {
    return getLocations?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? getLocations,
    TResult Function(double lat, double long, String? name)? getWeather,
    required TResult orElse(),
  }) {
    if (getLocations != null) {
      return getLocations(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLocations value) getLocations,
    required TResult Function(_GetWeather value) getWeather,
  }) {
    return getLocations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLocations value)? getLocations,
    TResult? Function(_GetWeather value)? getWeather,
  }) {
    return getLocations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLocations value)? getLocations,
    TResult Function(_GetWeather value)? getWeather,
    required TResult orElse(),
  }) {
    if (getLocations != null) {
      return getLocations(this);
    }
    return orElse();
  }
}

abstract class _GetLocations implements WeatherEvent {
  const factory _GetLocations({required final String name}) =
      _$GetLocationsImpl;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$GetLocationsImplCopyWith<_$GetLocationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetWeatherImplCopyWith<$Res>
    implements $WeatherEventCopyWith<$Res> {
  factory _$$GetWeatherImplCopyWith(
          _$GetWeatherImpl value, $Res Function(_$GetWeatherImpl) then) =
      __$$GetWeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double long, String? name});
}

/// @nodoc
class __$$GetWeatherImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$GetWeatherImpl>
    implements _$$GetWeatherImplCopyWith<$Res> {
  __$$GetWeatherImplCopyWithImpl(
      _$GetWeatherImpl _value, $Res Function(_$GetWeatherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? long = null,
    Object? name = freezed,
  }) {
    return _then(_$GetWeatherImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetWeatherImpl implements _GetWeather {
  const _$GetWeatherImpl({required this.lat, required this.long, this.name});

  @override
  final double lat;
  @override
  final double long;
  @override
  final String? name;

  @override
  String toString() {
    return 'WeatherEvent.getWeather(lat: $lat, long: $long, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetWeatherImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lat, long, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetWeatherImplCopyWith<_$GetWeatherImpl> get copyWith =>
      __$$GetWeatherImplCopyWithImpl<_$GetWeatherImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) getLocations,
    required TResult Function(double lat, double long, String? name) getWeather,
  }) {
    return getWeather(lat, long, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? getLocations,
    TResult? Function(double lat, double long, String? name)? getWeather,
  }) {
    return getWeather?.call(lat, long, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? getLocations,
    TResult Function(double lat, double long, String? name)? getWeather,
    required TResult orElse(),
  }) {
    if (getWeather != null) {
      return getWeather(lat, long, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLocations value) getLocations,
    required TResult Function(_GetWeather value) getWeather,
  }) {
    return getWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLocations value)? getLocations,
    TResult? Function(_GetWeather value)? getWeather,
  }) {
    return getWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLocations value)? getLocations,
    TResult Function(_GetWeather value)? getWeather,
    required TResult orElse(),
  }) {
    if (getWeather != null) {
      return getWeather(this);
    }
    return orElse();
  }
}

abstract class _GetWeather implements WeatherEvent {
  const factory _GetWeather(
      {required final double lat,
      required final double long,
      final String? name}) = _$GetWeatherImpl;

  double get lat;
  double get long;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$GetWeatherImplCopyWith<_$GetWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeatherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingLocations,
    required TResult Function() loadingWeather,
    required TResult Function(List<LocationModel> locations) loadedLocation,
    required TResult Function(WeatherModel weather, String name) loadedWeather,
    required TResult Function(String msg) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingLocations,
    TResult? Function()? loadingWeather,
    TResult? Function(List<LocationModel> locations)? loadedLocation,
    TResult? Function(WeatherModel weather, String name)? loadedWeather,
    TResult? Function(String msg)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingLocations,
    TResult Function()? loadingWeather,
    TResult Function(List<LocationModel> locations)? loadedLocation,
    TResult Function(WeatherModel weather, String name)? loadedWeather,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingLocations value) loadingLocations,
    required TResult Function(_LoadingWeather value) loadingWeather,
    required TResult Function(_LoadedLocation value) loadedLocation,
    required TResult Function(_LoadedWeather value) loadedWeather,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingLocations value)? loadingLocations,
    TResult? Function(_LoadingWeather value)? loadingWeather,
    TResult? Function(_LoadedLocation value)? loadedLocation,
    TResult? Function(_LoadedWeather value)? loadedWeather,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingLocations value)? loadingLocations,
    TResult Function(_LoadingWeather value)? loadingWeather,
    TResult Function(_LoadedLocation value)? loadedLocation,
    TResult Function(_LoadedWeather value)? loadedWeather,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl() : super._();

  @override
  String toString() {
    return 'WeatherState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingLocations,
    required TResult Function() loadingWeather,
    required TResult Function(List<LocationModel> locations) loadedLocation,
    required TResult Function(WeatherModel weather, String name) loadedWeather,
    required TResult Function(String msg) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingLocations,
    TResult? Function()? loadingWeather,
    TResult? Function(List<LocationModel> locations)? loadedLocation,
    TResult? Function(WeatherModel weather, String name)? loadedWeather,
    TResult? Function(String msg)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingLocations,
    TResult Function()? loadingWeather,
    TResult Function(List<LocationModel> locations)? loadedLocation,
    TResult Function(WeatherModel weather, String name)? loadedWeather,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingLocations value) loadingLocations,
    required TResult Function(_LoadingWeather value) loadingWeather,
    required TResult Function(_LoadedLocation value) loadedLocation,
    required TResult Function(_LoadedWeather value) loadedWeather,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingLocations value)? loadingLocations,
    TResult? Function(_LoadingWeather value)? loadingWeather,
    TResult? Function(_LoadedLocation value)? loadedLocation,
    TResult? Function(_LoadedWeather value)? loadedWeather,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingLocations value)? loadingLocations,
    TResult Function(_LoadingWeather value)? loadingWeather,
    TResult Function(_LoadedLocation value)? loadedLocation,
    TResult Function(_LoadedWeather value)? loadedWeather,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends WeatherState {
  const factory _Initial() = _$InitialImpl;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$LoadingLocationsImplCopyWith<$Res> {
  factory _$$LoadingLocationsImplCopyWith(_$LoadingLocationsImpl value,
          $Res Function(_$LoadingLocationsImpl) then) =
      __$$LoadingLocationsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingLocationsImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$LoadingLocationsImpl>
    implements _$$LoadingLocationsImplCopyWith<$Res> {
  __$$LoadingLocationsImplCopyWithImpl(_$LoadingLocationsImpl _value,
      $Res Function(_$LoadingLocationsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingLocationsImpl extends _LoadingLocations {
  const _$LoadingLocationsImpl() : super._();

  @override
  String toString() {
    return 'WeatherState.loadingLocations()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingLocationsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingLocations,
    required TResult Function() loadingWeather,
    required TResult Function(List<LocationModel> locations) loadedLocation,
    required TResult Function(WeatherModel weather, String name) loadedWeather,
    required TResult Function(String msg) error,
  }) {
    return loadingLocations();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingLocations,
    TResult? Function()? loadingWeather,
    TResult? Function(List<LocationModel> locations)? loadedLocation,
    TResult? Function(WeatherModel weather, String name)? loadedWeather,
    TResult? Function(String msg)? error,
  }) {
    return loadingLocations?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingLocations,
    TResult Function()? loadingWeather,
    TResult Function(List<LocationModel> locations)? loadedLocation,
    TResult Function(WeatherModel weather, String name)? loadedWeather,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) {
    if (loadingLocations != null) {
      return loadingLocations();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingLocations value) loadingLocations,
    required TResult Function(_LoadingWeather value) loadingWeather,
    required TResult Function(_LoadedLocation value) loadedLocation,
    required TResult Function(_LoadedWeather value) loadedWeather,
    required TResult Function(_Error value) error,
  }) {
    return loadingLocations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingLocations value)? loadingLocations,
    TResult? Function(_LoadingWeather value)? loadingWeather,
    TResult? Function(_LoadedLocation value)? loadedLocation,
    TResult? Function(_LoadedWeather value)? loadedWeather,
    TResult? Function(_Error value)? error,
  }) {
    return loadingLocations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingLocations value)? loadingLocations,
    TResult Function(_LoadingWeather value)? loadingWeather,
    TResult Function(_LoadedLocation value)? loadedLocation,
    TResult Function(_LoadedWeather value)? loadedWeather,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadingLocations != null) {
      return loadingLocations(this);
    }
    return orElse();
  }
}

abstract class _LoadingLocations extends WeatherState {
  const factory _LoadingLocations() = _$LoadingLocationsImpl;
  const _LoadingLocations._() : super._();
}

/// @nodoc
abstract class _$$LoadingWeatherImplCopyWith<$Res> {
  factory _$$LoadingWeatherImplCopyWith(_$LoadingWeatherImpl value,
          $Res Function(_$LoadingWeatherImpl) then) =
      __$$LoadingWeatherImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingWeatherImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$LoadingWeatherImpl>
    implements _$$LoadingWeatherImplCopyWith<$Res> {
  __$$LoadingWeatherImplCopyWithImpl(
      _$LoadingWeatherImpl _value, $Res Function(_$LoadingWeatherImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingWeatherImpl extends _LoadingWeather {
  const _$LoadingWeatherImpl() : super._();

  @override
  String toString() {
    return 'WeatherState.loadingWeather()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingWeatherImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingLocations,
    required TResult Function() loadingWeather,
    required TResult Function(List<LocationModel> locations) loadedLocation,
    required TResult Function(WeatherModel weather, String name) loadedWeather,
    required TResult Function(String msg) error,
  }) {
    return loadingWeather();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingLocations,
    TResult? Function()? loadingWeather,
    TResult? Function(List<LocationModel> locations)? loadedLocation,
    TResult? Function(WeatherModel weather, String name)? loadedWeather,
    TResult? Function(String msg)? error,
  }) {
    return loadingWeather?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingLocations,
    TResult Function()? loadingWeather,
    TResult Function(List<LocationModel> locations)? loadedLocation,
    TResult Function(WeatherModel weather, String name)? loadedWeather,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) {
    if (loadingWeather != null) {
      return loadingWeather();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingLocations value) loadingLocations,
    required TResult Function(_LoadingWeather value) loadingWeather,
    required TResult Function(_LoadedLocation value) loadedLocation,
    required TResult Function(_LoadedWeather value) loadedWeather,
    required TResult Function(_Error value) error,
  }) {
    return loadingWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingLocations value)? loadingLocations,
    TResult? Function(_LoadingWeather value)? loadingWeather,
    TResult? Function(_LoadedLocation value)? loadedLocation,
    TResult? Function(_LoadedWeather value)? loadedWeather,
    TResult? Function(_Error value)? error,
  }) {
    return loadingWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingLocations value)? loadingLocations,
    TResult Function(_LoadingWeather value)? loadingWeather,
    TResult Function(_LoadedLocation value)? loadedLocation,
    TResult Function(_LoadedWeather value)? loadedWeather,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadingWeather != null) {
      return loadingWeather(this);
    }
    return orElse();
  }
}

abstract class _LoadingWeather extends WeatherState {
  const factory _LoadingWeather() = _$LoadingWeatherImpl;
  const _LoadingWeather._() : super._();
}

/// @nodoc
abstract class _$$LoadedLocationImplCopyWith<$Res> {
  factory _$$LoadedLocationImplCopyWith(_$LoadedLocationImpl value,
          $Res Function(_$LoadedLocationImpl) then) =
      __$$LoadedLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LocationModel> locations});
}

/// @nodoc
class __$$LoadedLocationImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$LoadedLocationImpl>
    implements _$$LoadedLocationImplCopyWith<$Res> {
  __$$LoadedLocationImplCopyWithImpl(
      _$LoadedLocationImpl _value, $Res Function(_$LoadedLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locations = null,
  }) {
    return _then(_$LoadedLocationImpl(
      locations: null == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>,
    ));
  }
}

/// @nodoc

class _$LoadedLocationImpl extends _LoadedLocation {
  const _$LoadedLocationImpl({required final List<LocationModel> locations})
      : _locations = locations,
        super._();

  final List<LocationModel> _locations;
  @override
  List<LocationModel> get locations {
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locations);
  }

  @override
  String toString() {
    return 'WeatherState.loadedLocation(locations: $locations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedLocationImpl &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_locations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedLocationImplCopyWith<_$LoadedLocationImpl> get copyWith =>
      __$$LoadedLocationImplCopyWithImpl<_$LoadedLocationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingLocations,
    required TResult Function() loadingWeather,
    required TResult Function(List<LocationModel> locations) loadedLocation,
    required TResult Function(WeatherModel weather, String name) loadedWeather,
    required TResult Function(String msg) error,
  }) {
    return loadedLocation(locations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingLocations,
    TResult? Function()? loadingWeather,
    TResult? Function(List<LocationModel> locations)? loadedLocation,
    TResult? Function(WeatherModel weather, String name)? loadedWeather,
    TResult? Function(String msg)? error,
  }) {
    return loadedLocation?.call(locations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingLocations,
    TResult Function()? loadingWeather,
    TResult Function(List<LocationModel> locations)? loadedLocation,
    TResult Function(WeatherModel weather, String name)? loadedWeather,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) {
    if (loadedLocation != null) {
      return loadedLocation(locations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingLocations value) loadingLocations,
    required TResult Function(_LoadingWeather value) loadingWeather,
    required TResult Function(_LoadedLocation value) loadedLocation,
    required TResult Function(_LoadedWeather value) loadedWeather,
    required TResult Function(_Error value) error,
  }) {
    return loadedLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingLocations value)? loadingLocations,
    TResult? Function(_LoadingWeather value)? loadingWeather,
    TResult? Function(_LoadedLocation value)? loadedLocation,
    TResult? Function(_LoadedWeather value)? loadedWeather,
    TResult? Function(_Error value)? error,
  }) {
    return loadedLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingLocations value)? loadingLocations,
    TResult Function(_LoadingWeather value)? loadingWeather,
    TResult Function(_LoadedLocation value)? loadedLocation,
    TResult Function(_LoadedWeather value)? loadedWeather,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadedLocation != null) {
      return loadedLocation(this);
    }
    return orElse();
  }
}

abstract class _LoadedLocation extends WeatherState {
  const factory _LoadedLocation(
      {required final List<LocationModel> locations}) = _$LoadedLocationImpl;
  const _LoadedLocation._() : super._();

  List<LocationModel> get locations;
  @JsonKey(ignore: true)
  _$$LoadedLocationImplCopyWith<_$LoadedLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedWeatherImplCopyWith<$Res> {
  factory _$$LoadedWeatherImplCopyWith(
          _$LoadedWeatherImpl value, $Res Function(_$LoadedWeatherImpl) then) =
      __$$LoadedWeatherImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WeatherModel weather, String name});

  $WeatherModelCopyWith<$Res> get weather;
}

/// @nodoc
class __$$LoadedWeatherImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$LoadedWeatherImpl>
    implements _$$LoadedWeatherImplCopyWith<$Res> {
  __$$LoadedWeatherImplCopyWithImpl(
      _$LoadedWeatherImpl _value, $Res Function(_$LoadedWeatherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = null,
    Object? name = null,
  }) {
    return _then(_$LoadedWeatherImpl(
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as WeatherModel,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherModelCopyWith<$Res> get weather {
    return $WeatherModelCopyWith<$Res>(_value.weather, (value) {
      return _then(_value.copyWith(weather: value));
    });
  }
}

/// @nodoc

class _$LoadedWeatherImpl extends _LoadedWeather {
  const _$LoadedWeatherImpl({required this.weather, required this.name})
      : super._();

  @override
  final WeatherModel weather;
  @override
  final String name;

  @override
  String toString() {
    return 'WeatherState.loadedWeather(weather: $weather, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedWeatherImpl &&
            (identical(other.weather, weather) || other.weather == weather) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weather, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedWeatherImplCopyWith<_$LoadedWeatherImpl> get copyWith =>
      __$$LoadedWeatherImplCopyWithImpl<_$LoadedWeatherImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingLocations,
    required TResult Function() loadingWeather,
    required TResult Function(List<LocationModel> locations) loadedLocation,
    required TResult Function(WeatherModel weather, String name) loadedWeather,
    required TResult Function(String msg) error,
  }) {
    return loadedWeather(weather, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingLocations,
    TResult? Function()? loadingWeather,
    TResult? Function(List<LocationModel> locations)? loadedLocation,
    TResult? Function(WeatherModel weather, String name)? loadedWeather,
    TResult? Function(String msg)? error,
  }) {
    return loadedWeather?.call(weather, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingLocations,
    TResult Function()? loadingWeather,
    TResult Function(List<LocationModel> locations)? loadedLocation,
    TResult Function(WeatherModel weather, String name)? loadedWeather,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) {
    if (loadedWeather != null) {
      return loadedWeather(weather, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingLocations value) loadingLocations,
    required TResult Function(_LoadingWeather value) loadingWeather,
    required TResult Function(_LoadedLocation value) loadedLocation,
    required TResult Function(_LoadedWeather value) loadedWeather,
    required TResult Function(_Error value) error,
  }) {
    return loadedWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingLocations value)? loadingLocations,
    TResult? Function(_LoadingWeather value)? loadingWeather,
    TResult? Function(_LoadedLocation value)? loadedLocation,
    TResult? Function(_LoadedWeather value)? loadedWeather,
    TResult? Function(_Error value)? error,
  }) {
    return loadedWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingLocations value)? loadingLocations,
    TResult Function(_LoadingWeather value)? loadingWeather,
    TResult Function(_LoadedLocation value)? loadedLocation,
    TResult Function(_LoadedWeather value)? loadedWeather,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadedWeather != null) {
      return loadedWeather(this);
    }
    return orElse();
  }
}

abstract class _LoadedWeather extends WeatherState {
  const factory _LoadedWeather(
      {required final WeatherModel weather,
      required final String name}) = _$LoadedWeatherImpl;
  const _LoadedWeather._() : super._();

  WeatherModel get weather;
  String get name;
  @JsonKey(ignore: true)
  _$$LoadedWeatherImplCopyWith<_$LoadedWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$ErrorImpl(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl extends _Error {
  const _$ErrorImpl(this.msg) : super._();

  @override
  final String msg;

  @override
  String toString() {
    return 'WeatherState.error(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingLocations,
    required TResult Function() loadingWeather,
    required TResult Function(List<LocationModel> locations) loadedLocation,
    required TResult Function(WeatherModel weather, String name) loadedWeather,
    required TResult Function(String msg) error,
  }) {
    return error(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingLocations,
    TResult? Function()? loadingWeather,
    TResult? Function(List<LocationModel> locations)? loadedLocation,
    TResult? Function(WeatherModel weather, String name)? loadedWeather,
    TResult? Function(String msg)? error,
  }) {
    return error?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingLocations,
    TResult Function()? loadingWeather,
    TResult Function(List<LocationModel> locations)? loadedLocation,
    TResult Function(WeatherModel weather, String name)? loadedWeather,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingLocations value) loadingLocations,
    required TResult Function(_LoadingWeather value) loadingWeather,
    required TResult Function(_LoadedLocation value) loadedLocation,
    required TResult Function(_LoadedWeather value) loadedWeather,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingLocations value)? loadingLocations,
    TResult? Function(_LoadingWeather value)? loadingWeather,
    TResult? Function(_LoadedLocation value)? loadedLocation,
    TResult? Function(_LoadedWeather value)? loadedWeather,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingLocations value)? loadingLocations,
    TResult Function(_LoadingWeather value)? loadingWeather,
    TResult Function(_LoadedLocation value)? loadedLocation,
    TResult Function(_LoadedWeather value)? loadedWeather,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends WeatherState {
  const factory _Error(final String msg) = _$ErrorImpl;
  const _Error._() : super._();

  String get msg;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

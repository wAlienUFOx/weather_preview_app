// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkIfAuthorized,
    required TResult Function(String phone) authorize,
    required TResult Function() deAuthorize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkIfAuthorized,
    TResult? Function(String phone)? authorize,
    TResult? Function()? deAuthorize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkIfAuthorized,
    TResult Function(String phone)? authorize,
    TResult Function()? deAuthorize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckIfAuthorized value) checkIfAuthorized,
    required TResult Function(_Authorize value) authorize,
    required TResult Function(_Deauthorize value) deAuthorize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckIfAuthorized value)? checkIfAuthorized,
    TResult? Function(_Authorize value)? authorize,
    TResult? Function(_Deauthorize value)? deAuthorize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckIfAuthorized value)? checkIfAuthorized,
    TResult Function(_Authorize value)? authorize,
    TResult Function(_Deauthorize value)? deAuthorize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckIfAuthorizedImplCopyWith<$Res> {
  factory _$$CheckIfAuthorizedImplCopyWith(_$CheckIfAuthorizedImpl value,
          $Res Function(_$CheckIfAuthorizedImpl) then) =
      __$$CheckIfAuthorizedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckIfAuthorizedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckIfAuthorizedImpl>
    implements _$$CheckIfAuthorizedImplCopyWith<$Res> {
  __$$CheckIfAuthorizedImplCopyWithImpl(_$CheckIfAuthorizedImpl _value,
      $Res Function(_$CheckIfAuthorizedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckIfAuthorizedImpl
    with DiagnosticableTreeMixin
    implements _CheckIfAuthorized {
  const _$CheckIfAuthorizedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.checkIfAuthorized()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.checkIfAuthorized'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckIfAuthorizedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkIfAuthorized,
    required TResult Function(String phone) authorize,
    required TResult Function() deAuthorize,
  }) {
    return checkIfAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkIfAuthorized,
    TResult? Function(String phone)? authorize,
    TResult? Function()? deAuthorize,
  }) {
    return checkIfAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkIfAuthorized,
    TResult Function(String phone)? authorize,
    TResult Function()? deAuthorize,
    required TResult orElse(),
  }) {
    if (checkIfAuthorized != null) {
      return checkIfAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckIfAuthorized value) checkIfAuthorized,
    required TResult Function(_Authorize value) authorize,
    required TResult Function(_Deauthorize value) deAuthorize,
  }) {
    return checkIfAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckIfAuthorized value)? checkIfAuthorized,
    TResult? Function(_Authorize value)? authorize,
    TResult? Function(_Deauthorize value)? deAuthorize,
  }) {
    return checkIfAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckIfAuthorized value)? checkIfAuthorized,
    TResult Function(_Authorize value)? authorize,
    TResult Function(_Deauthorize value)? deAuthorize,
    required TResult orElse(),
  }) {
    if (checkIfAuthorized != null) {
      return checkIfAuthorized(this);
    }
    return orElse();
  }
}

abstract class _CheckIfAuthorized implements AuthEvent {
  const factory _CheckIfAuthorized() = _$CheckIfAuthorizedImpl;
}

/// @nodoc
abstract class _$$AuthorizeImplCopyWith<$Res> {
  factory _$$AuthorizeImplCopyWith(
          _$AuthorizeImpl value, $Res Function(_$AuthorizeImpl) then) =
      __$$AuthorizeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$AuthorizeImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthorizeImpl>
    implements _$$AuthorizeImplCopyWith<$Res> {
  __$$AuthorizeImplCopyWithImpl(
      _$AuthorizeImpl _value, $Res Function(_$AuthorizeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$AuthorizeImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthorizeImpl with DiagnosticableTreeMixin implements _Authorize {
  const _$AuthorizeImpl({required this.phone});

  @override
  final String phone;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.authorize(phone: $phone)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.authorize'))
      ..add(DiagnosticsProperty('phone', phone));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorizeImpl &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorizeImplCopyWith<_$AuthorizeImpl> get copyWith =>
      __$$AuthorizeImplCopyWithImpl<_$AuthorizeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkIfAuthorized,
    required TResult Function(String phone) authorize,
    required TResult Function() deAuthorize,
  }) {
    return authorize(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkIfAuthorized,
    TResult? Function(String phone)? authorize,
    TResult? Function()? deAuthorize,
  }) {
    return authorize?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkIfAuthorized,
    TResult Function(String phone)? authorize,
    TResult Function()? deAuthorize,
    required TResult orElse(),
  }) {
    if (authorize != null) {
      return authorize(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckIfAuthorized value) checkIfAuthorized,
    required TResult Function(_Authorize value) authorize,
    required TResult Function(_Deauthorize value) deAuthorize,
  }) {
    return authorize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckIfAuthorized value)? checkIfAuthorized,
    TResult? Function(_Authorize value)? authorize,
    TResult? Function(_Deauthorize value)? deAuthorize,
  }) {
    return authorize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckIfAuthorized value)? checkIfAuthorized,
    TResult Function(_Authorize value)? authorize,
    TResult Function(_Deauthorize value)? deAuthorize,
    required TResult orElse(),
  }) {
    if (authorize != null) {
      return authorize(this);
    }
    return orElse();
  }
}

abstract class _Authorize implements AuthEvent {
  const factory _Authorize({required final String phone}) = _$AuthorizeImpl;

  String get phone;
  @JsonKey(ignore: true)
  _$$AuthorizeImplCopyWith<_$AuthorizeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeauthorizeImplCopyWith<$Res> {
  factory _$$DeauthorizeImplCopyWith(
          _$DeauthorizeImpl value, $Res Function(_$DeauthorizeImpl) then) =
      __$$DeauthorizeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeauthorizeImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$DeauthorizeImpl>
    implements _$$DeauthorizeImplCopyWith<$Res> {
  __$$DeauthorizeImplCopyWithImpl(
      _$DeauthorizeImpl _value, $Res Function(_$DeauthorizeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeauthorizeImpl with DiagnosticableTreeMixin implements _Deauthorize {
  const _$DeauthorizeImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.deAuthorize()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.deAuthorize'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeauthorizeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkIfAuthorized,
    required TResult Function(String phone) authorize,
    required TResult Function() deAuthorize,
  }) {
    return deAuthorize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkIfAuthorized,
    TResult? Function(String phone)? authorize,
    TResult? Function()? deAuthorize,
  }) {
    return deAuthorize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkIfAuthorized,
    TResult Function(String phone)? authorize,
    TResult Function()? deAuthorize,
    required TResult orElse(),
  }) {
    if (deAuthorize != null) {
      return deAuthorize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckIfAuthorized value) checkIfAuthorized,
    required TResult Function(_Authorize value) authorize,
    required TResult Function(_Deauthorize value) deAuthorize,
  }) {
    return deAuthorize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckIfAuthorized value)? checkIfAuthorized,
    TResult? Function(_Authorize value)? authorize,
    TResult? Function(_Deauthorize value)? deAuthorize,
  }) {
    return deAuthorize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckIfAuthorized value)? checkIfAuthorized,
    TResult Function(_Authorize value)? authorize,
    TResult Function(_Deauthorize value)? deAuthorize,
    required TResult orElse(),
  }) {
    if (deAuthorize != null) {
      return deAuthorize(this);
    }
    return orElse();
  }
}

abstract class _Deauthorize implements AuthEvent {
  const factory _Deauthorize() = _$DeauthorizeImpl;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String userNumber) authorized,
    required TResult Function() unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String userNumber)? authorized,
    TResult? Function()? unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String userNumber)? authorized,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_Unauthorized value) unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_Unauthorized value)? unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

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
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl extends _Initial with DiagnosticableTreeMixin {
  const _$InitialImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthState.initial'));
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
    required TResult Function(String userNumber) authorized,
    required TResult Function() unauthorized,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String userNumber)? authorized,
    TResult? Function()? unauthorized,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String userNumber)? authorized,
    TResult Function()? unauthorized,
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
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_Unauthorized value) unauthorized,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_Unauthorized value)? unauthorized,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends AuthState {
  const factory _Initial() = _$InitialImpl;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$AuthorizedImplCopyWith<$Res> {
  factory _$$AuthorizedImplCopyWith(
          _$AuthorizedImpl value, $Res Function(_$AuthorizedImpl) then) =
      __$$AuthorizedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userNumber});
}

/// @nodoc
class __$$AuthorizedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthorizedImpl>
    implements _$$AuthorizedImplCopyWith<$Res> {
  __$$AuthorizedImplCopyWithImpl(
      _$AuthorizedImpl _value, $Res Function(_$AuthorizedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userNumber = null,
  }) {
    return _then(_$AuthorizedImpl(
      userNumber: null == userNumber
          ? _value.userNumber
          : userNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthorizedImpl extends _Authorized with DiagnosticableTreeMixin {
  const _$AuthorizedImpl({required this.userNumber}) : super._();

  @override
  final String userNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.authorized(userNumber: $userNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.authorized'))
      ..add(DiagnosticsProperty('userNumber', userNumber));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorizedImpl &&
            (identical(other.userNumber, userNumber) ||
                other.userNumber == userNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorizedImplCopyWith<_$AuthorizedImpl> get copyWith =>
      __$$AuthorizedImplCopyWithImpl<_$AuthorizedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String userNumber) authorized,
    required TResult Function() unauthorized,
  }) {
    return authorized(userNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String userNumber)? authorized,
    TResult? Function()? unauthorized,
  }) {
    return authorized?.call(userNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String userNumber)? authorized,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(userNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_Unauthorized value) unauthorized,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_Unauthorized value)? unauthorized,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class _Authorized extends AuthState {
  const factory _Authorized({required final String userNumber}) =
      _$AuthorizedImpl;
  const _Authorized._() : super._();

  String get userNumber;
  @JsonKey(ignore: true)
  _$$AuthorizedImplCopyWith<_$AuthorizedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthorizedImplCopyWith<$Res> {
  factory _$$UnauthorizedImplCopyWith(
          _$UnauthorizedImpl value, $Res Function(_$UnauthorizedImpl) then) =
      __$$UnauthorizedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthorizedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UnauthorizedImpl>
    implements _$$UnauthorizedImplCopyWith<$Res> {
  __$$UnauthorizedImplCopyWithImpl(
      _$UnauthorizedImpl _value, $Res Function(_$UnauthorizedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnauthorizedImpl extends _Unauthorized with DiagnosticableTreeMixin {
  const _$UnauthorizedImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.unauthorized()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthState.unauthorized'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthorizedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String userNumber) authorized,
    required TResult Function() unauthorized,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String userNumber)? authorized,
    TResult? Function()? unauthorized,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String userNumber)? authorized,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_Unauthorized value) unauthorized,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_Unauthorized value)? unauthorized,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _Unauthorized extends AuthState {
  const factory _Unauthorized() = _$UnauthorizedImpl;
  const _Unauthorized._() : super._();
}

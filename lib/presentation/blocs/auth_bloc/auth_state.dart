part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState.initial() = _Initial;

  const factory AuthState.authorized({required String userNumber}) = _Authorized;

  const factory AuthState.unauthorized() = _Unauthorized;

  bool get isAuthorized => map(
        initial: (_) => false,
        authorized: (_) => true,
        unauthorized: (_) => false,
      );

  bool get isUnAuthorized => map(
    initial: (_) => false,
    authorized: (_) => false,
    unauthorized: (_) => true,
  );

  bool get isError => map(
        initial: (_) => false,
        authorized: (_) => false,
        unauthorized: (_) => false,
      );

  String? get userNumber => map(
        initial: (state) => null,
        authorized: (state) => state.userNumber,
        unauthorized: (state) => null,
      );
}

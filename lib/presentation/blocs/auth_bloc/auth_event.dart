part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkIfAuthorized() = _CheckIfAuthorized;
  const factory AuthEvent.authorize({required String phone}) = _Authorize;
  const factory AuthEvent.deAuthorize() = _Deauthorize;
}
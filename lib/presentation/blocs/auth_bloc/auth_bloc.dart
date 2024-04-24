import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/data_sources/local/shared_prefs.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const _Initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        checkIfAuthorized: (event) async => await _checkIfAuthorized(event, emit),
        authorize: (event) async => await _authorize(event, emit),
        deAuthorize: (_) async => await _deAuthorize(emit),
      );
    });
    add(const AuthEvent.checkIfAuthorized());
  }

  Future<void> _checkIfAuthorized(_CheckIfAuthorized event, Emitter<AuthState> emit) async {
    if (SharedPrefs.userNumber != null) {
      final number = SharedPrefs.userNumber!;
      emit(AuthState.authorized(userNumber: number));
    } else {
      emit(const AuthState.unauthorized());
    }
  }

  Future<void> _authorize(_Authorize event, Emitter<AuthState> emit) async {
    SharedPrefs.userNumber = event.phone;
    emit(AuthState.authorized(userNumber: event.phone));
  }
}

Future<void> _deAuthorize(Emitter<AuthState> emit) async {
  SharedPrefs.userNumber = null;
  emit(const AuthState.unauthorized());
}

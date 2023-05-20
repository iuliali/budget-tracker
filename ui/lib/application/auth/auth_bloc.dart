import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../domain/auth/entities/user.dart';
import '../../domain/auth/facade.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(AuthState.initial()) {
    on<AuthCheckRequested>(_onAuthCheckRequested);
    on<SignedOut>(_onSignedOut);
  }

  void _onAuthCheckRequested(
    AuthCheckRequested event,
    Emitter<AuthState> emit,
  ) async {
    final userOption = await _authFacade.getSignedInUser();
    if (userOption.isNone()) {
      emit(AuthState.unauthenticated());
    }
    emit(
      userOption.fold(
        () => AuthState.unauthenticated(),
        (user) => AuthState.authenticated(userOption),
      ),
    );
  }

  void _onSignedOut(
    SignedOut event,
    Emitter<AuthState> emit,
  ) async {
    await _authFacade.signOut();
    emit(AuthState.unauthenticated());
  }
}

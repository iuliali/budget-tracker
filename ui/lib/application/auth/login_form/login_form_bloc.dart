import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/facade.dart';
import '../../../domain/auth/failures.dart';
import '../../../domain/auth/value_objects.dart';
import '../auth_bloc.dart';

part 'login_form_event.dart';
part 'login_form_state.dart';
part 'login_form_bloc.freezed.dart';

@injectable
class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
  final IAuthFacade _authFacade;
  final AuthBloc _authBloc;

  LoginFormBloc(this._authFacade, this._authBloc) : super(LoginFormState.initial()) {
    on<UsernameChanged>(_onUsernameChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<LoginWithUsernameAndPasswordPressed>(_onLoginWithUsernameAndPasswordPressed);
  }

  Future _onUsernameChanged(UsernameChanged event, Emitter<LoginFormState> emit) async {
    emit(state.copyWith(
      username: Username(event.usernameStr),
      authFailureOrSuccessOption: none(),
    ));
  }

  Future _onPasswordChanged(PasswordChanged event, Emitter<LoginFormState> emit) async {
    emit(state.copyWith(
      password: Password(event.passwordStr),
      authFailureOrSuccessOption: none(),
    ));
  }

  Future _onLoginWithUsernameAndPasswordPressed(LoginWithUsernameAndPasswordPressed event, Emitter<LoginFormState> emit) async {
    Either<AuthFailure, Unit>? failureOrSuccess;

    final isUsernameValid = state.username.isValid();
    final isPasswordValid = state.password.isValid();

    if (isUsernameValid && isPasswordValid) {
      emit(state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      ));

      failureOrSuccess = await _authFacade.login(
        username: state.username,
        password: state.password,
      );
      if (failureOrSuccess.isRight()) {
        _authBloc.add(const AuthEvent.authCheckRequested());
      }
    }

    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }

}

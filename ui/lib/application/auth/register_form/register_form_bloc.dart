import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/facade.dart';
import '../../../domain/auth/failures.dart';
import '../../../domain/auth/value_objects.dart';

part 'register_form_event.dart';
part 'register_form_state.dart';

part 'register_form_bloc.freezed.dart';

@injectable
class RegisterFormBloc extends Bloc<RegisterFormEvent, RegisterFormState> {
  final IAuthFacade _authFacade;

  RegisterFormBloc(this._authFacade) : super(RegisterFormState.initial()) {
    on<UsernameChanged>(_onUsernameChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<ConfirmPasswordChanged>(_onConfirmPasswordChanged);
    on<FirstNameChanged>(_onFirstNameChanged);
    on<LastNameChanged>(_onLastNameChanged);
    on<EmailChanged>(_onEmailChanged);
    on<RegisterPressed>(_onRegisterPressed);
    on<RegisterAgain>(_onRegisterAgain);
  }

  Future _onUsernameChanged(
      UsernameChanged event, Emitter<RegisterFormState> emit) async {
    emit(state.copyWith(
      username: Username(event.usernameStr),
      authFailureOrSuccessOption: none(),
    ));
  }

  Future _onPasswordChanged(
      PasswordChanged event, Emitter<RegisterFormState> emit) async {
    emit(state.copyWith(
      password: Password(event.passwordStr),
      authFailureOrSuccessOption: none(),
    ));
  }

  Future _onConfirmPasswordChanged(
      ConfirmPasswordChanged event, Emitter<RegisterFormState> emit) async {
    emit(state.copyWith(
      confirmPassword: Password(event.confirmPasswordStr),
      authFailureOrSuccessOption: none(),
    ));
  }

  Future _onFirstNameChanged(
      FirstNameChanged event, Emitter<RegisterFormState> emit) async {
    emit(state.copyWith(
      firstName: FirstName(event.firstNameStr),
      authFailureOrSuccessOption: none(),
    ));
  }

  Future _onLastNameChanged(
      LastNameChanged event, Emitter<RegisterFormState> emit) async {
    emit(state.copyWith(
      lastName: LastName(event.lastNameStr),
      authFailureOrSuccessOption: none(),
    ));
  }

  Future _onEmailChanged(
      EmailChanged event, Emitter<RegisterFormState> emit) async {
    emit(state.copyWith(
      emailAddress: EmailAddress(event.emailStr),
      authFailureOrSuccessOption: none(),
    ));
  }

  Future _onRegisterPressed(
      RegisterPressed event, Emitter<RegisterFormState> emit) async {
    Either<AuthFailure, Unit>? failureOrSuccess;

    final isUsernameValid = state.username.isValid();
    final isPasswordValid = state.password.isValid();
    final isConfirmPasswordValid = state.confirmPassword.isValid();
    final isFirstNameValid = state.firstName.isValid();
    final isLastNameValid = state.lastName.isValid();
    final isEmailValid = state.emailAddress.isValid();

    if (isUsernameValid &&
        isPasswordValid &&
        isConfirmPasswordValid &&
        isFirstNameValid &&
        isLastNameValid &&
        isEmailValid) {
      emit(state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      ));

      failureOrSuccess = await _authFacade.register(
        username: state.username,
        password: state.password,
        email: state.emailAddress,
        firstName: state.firstName,
        lastName: state.lastName,
      );
    }

    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }

  Future _onRegisterAgain(
      RegisterAgain event, Emitter<RegisterFormState> emit) async {
    emit(RegisterFormState.initial());
  }
}

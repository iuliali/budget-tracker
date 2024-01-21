part of 'register_form_bloc.dart';

@freezed
abstract class RegisterFormState with _$RegisterFormState {
  const factory RegisterFormState({
    required Username username,
    required Password password,
    required Password confirmPassword,
    required EmailAddress emailAddress,
    required FirstName firstName,
    required LastName lastName,
    required UserDefaultCurrency defaultCurrency,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _RegisterFormState;

  factory RegisterFormState.initial() => RegisterFormState(
        username: Username(''),
        password: Password(''),
        confirmPassword: Password(''),
        emailAddress: EmailAddress(''),
        firstName: FirstName(''),
        lastName: LastName(''),
        defaultCurrency: UserDefaultCurrency('RON'),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}

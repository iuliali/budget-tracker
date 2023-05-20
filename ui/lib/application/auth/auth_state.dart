part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    required bool isAuthenticated,
    required Option<User> user,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        isAuthenticated: false,
        user: none(),
      );

  factory AuthState.authenticated(Option<User> user) => AuthState(
        isAuthenticated: user.isSome(),
        user: user,
      );
  factory AuthState.unauthenticated() => AuthState(
        isAuthenticated: false,
        user: none(),
      );
}

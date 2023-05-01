part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();
}

class LoginEvent extends AuthEvent {
  final String username;
  final String password;

  const LoginEvent({required this.username, required this.password});

  @override
  List<Object> get props => [username, password];
}

class LogoutEvent extends AuthEvent {
  @override
  List<Object> get props => [];
}

class RegisterEvent extends AuthEvent {
  final String username;
  final String password;
  final String email;
  final String firstName;
  final String lastName;

  const RegisterEvent({
    required this.username,
    required this.password,
    required this.email,
    required this.firstName,
    required this.lastName,
  });

  @override
  List<Object> get props => [username, password, email, firstName, lastName];
}
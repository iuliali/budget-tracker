part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();
}

class AuthInitial extends AuthState {
  @override
  List<Object> get props => [];
}

class UnauthenticatedState extends AuthState {
  @override
  List<Object> get props => [];
}

class LoadingState extends AuthState {
  @override
  List<Object> get props => [];
}

class ErrorState extends AuthState {
  final String message;

  const ErrorState({required this.message});

  @override
  List<Object> get props => [message];
}

class AuthenticatedState extends AuthState {
  final User user;

  const AuthenticatedState({required this.user});

  @override
  List<Object> get props => [user];
}
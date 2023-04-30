
import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final List properties;

  const Failure([this.properties = const <dynamic>[]]);

  @override
  List<Object> get props => [properties];
}

class ServerFailure extends Failure {}
class CacheFailure extends Failure {}

class ConnectionFailure extends Failure {}

class InvalidInputFailure extends Failure {
  final String message;

  InvalidInputFailure({required this.message}) : super([message]);
}

class ConflictFailure extends Failure {
  final String message;

  ConflictFailure({required this.message}) : super([message]);
}

class EmailAlreadyUsedFailure extends ConflictFailure {
  EmailAlreadyUsedFailure() : super(message: 'Email already exists');
}

class UsernameAlreadyUsedFailure extends ConflictFailure {
  UsernameAlreadyUsedFailure() : super(message: 'Username already exists');
}

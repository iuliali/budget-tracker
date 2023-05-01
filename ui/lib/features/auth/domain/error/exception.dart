
import '../../../../core/domain/error/exceptions.dart';

class EmailAlreadyUsedException extends ConflictException {
  EmailAlreadyUsedException() : super(message: 'Email already exists');
}

class UsernameAlreadyUsedException extends ConflictException {
  UsernameAlreadyUsedException() : super(message: 'Username already exists');
}

class InvalidCredentialsException implements Exception {}
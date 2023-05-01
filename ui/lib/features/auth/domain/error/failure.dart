
import '../../../../core/domain/error/failures.dart';

class EmailAlreadyUsedFailure extends ConflictFailure {
  EmailAlreadyUsedFailure() : super(message: 'Email already exists');
}

class UsernameAlreadyUsedFailure extends ConflictFailure {
  UsernameAlreadyUsedFailure() : super(message: 'Username already exists');
}

class InvalidCredentialsFailure extends Failure {}

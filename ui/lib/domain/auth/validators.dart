import 'package:budget_tracker/domain/auth/value_objects.dart';
import 'package:dartz/dartz.dart';

import '../core/failures.dart';
import 'failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  }
  const emailRegex = r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-]+';
  if (!RegExp(emailRegex).hasMatch(input)) {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
  return right(input);
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  }
  if (input.length < 10) {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
  return right(input);
}

Either<ValueFailure<String>, String> validateUsername(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  }
  if (input.length < 6) {
    return left(ValueFailure.shortUsername(failedValue: input));
  }
  return right(input);
}

Either<ValueFailure<String>, String> validateFirstName(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  }
  if (input.length < 2) {
    return left(ValueFailure.shortFirstName(failedValue: input));
  }
  return right(input);
}

Either<ValueFailure<String>, String> validateLastName(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  }
  if (input.length < 2) {
    return left(ValueFailure.shortLastName(failedValue: input));
  }
  return right(input);
}

Either<AuthFailure, Unit> validatePasswordsMatch(
    Password password, Password confirmPassword) {
  if (password != confirmPassword) {
    return left(
      const AuthFailure.passwordsNotMatch(),
    );
  }
  return right(unit);
}
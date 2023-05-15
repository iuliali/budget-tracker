
import 'package:dartz/dartz.dart';

import '../core/failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex = r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-]+';
  if (!RegExp(emailRegex).hasMatch(input)) {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
  return right(input);
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length < 10) {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
  return right(input);
}

Either<ValueFailure<String>, String> validateUsername(String input) {
  if (input.length < 6) {
    return left(ValueFailure.shortUsername(failedValue: input));
  }
  return right(input);
}
import 'package:dartz/dartz.dart';

import 'failures.dart';


Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.length.toString().isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  }
  if (input.length < 3) {
    return left(ValueFailure.shortString(failedValue: input));
  }
  return right(input);
}
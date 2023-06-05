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

Either<ValueFailure<double>, double> validateDouble(String input) {
  if (input.length.toString().isEmpty) {
    return left(const ValueFailure.empty(failedValue: 0.0));
  }
  if (double.tryParse(input) == null) {
    return left(const ValueFailure.invalidDouble(failedValue: 0.0));
  }
  return right(double.parse(input));
}
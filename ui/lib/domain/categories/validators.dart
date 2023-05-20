import 'package:dartz/dartz.dart';

import '../core/failures.dart';

Either<ValueFailure<String>, String> validateCategoryName(String input) {
  if (input.length < 3) {
    return left(ValueFailure.shortCategoryName(failedValue: input));
  }
  return right(input);
}
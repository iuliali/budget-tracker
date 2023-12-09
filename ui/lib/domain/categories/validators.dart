import 'package:dartz/dartz.dart';

import '../core/failures.dart';

Either<ValueFailure<String>, String> validateCategoryName(String input) {
  if (input.length < 3) {
    return left(ValueFailure.shortCategoryName(failedValue: input));
  }
  return right(input);
}

Either<ValueFailure<double>, double> validateBudgetAmount(double input) {
  if (input < 0) {
    return left(ValueFailure.negativeBudgetAmount(failedValue: input));
  }
  return right(input);
}
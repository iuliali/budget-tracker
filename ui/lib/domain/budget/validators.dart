import 'package:dartz/dartz.dart';

import '../core/failures.dart';

Either<ValueFailure<double>, double> validateBudgetAmount(double input) {
  if (input < 0) {
    return left(ValueFailure.negativeBudgetAmount(failedValue: input));
  }
  return right(input);
}
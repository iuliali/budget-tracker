import 'package:dartz/dartz.dart';

import '../core/failures.dart';

Either<ValueFailure<double>, double> validateAmount(double input) {
  if (input < 0) {
    return left(ValueFailure.negativeTransactionAmount(failedValue: input));
  }
  return right(input);
}

Either<ValueFailure<String>, String> validateCurrency(String input) {
  if (input.length < 3) {
    return left(ValueFailure.invalidTransactionCurrency(failedValue: input));
  }
  return right(input);
}

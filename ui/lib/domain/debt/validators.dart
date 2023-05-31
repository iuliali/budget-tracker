import 'package:budget_tracker/domain/core/failures.dart';
import 'package:dartz/dartz.dart';

Either<ValueFailure<String>, String> validateMemberUsername(String input) {
  if (input.length >= 3) {
    return right(input);
  } else {
    return left(ValueFailure.shortUsername(failedValue: input));
  }
}
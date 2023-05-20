import 'package:budget_tracker/domain/budget/validators.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';

import '../core/failures.dart';
import '../core/value_object.dart';

@immutable
class BudgetAmount extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  const BudgetAmount._(this.value);

  factory BudgetAmount(double input) {
    return BudgetAmount._(
      validateBudgetAmount(input),
    );
  }
}

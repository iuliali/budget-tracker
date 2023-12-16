

import 'package:budget_tracker/domain/categories/validators.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';

import '../core/failures.dart';
import '../core/value_object.dart';

@immutable
class CategoryName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const CategoryName._(this.value);

  factory CategoryName(String input) {
    return CategoryName._(validateCategoryName(input));
  }
}

@immutable
class CategoryId extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  const CategoryId._(this.value);

  factory CategoryId(int input) {
    return CategoryId._(right(input));
  }
}

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

  factory BudgetAmount.fromString(String input) {
    return BudgetAmount._(
      validateBudgetAmount(double.parse(input)),
    );
  }
}

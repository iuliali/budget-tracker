import 'package:budget_tracker/domain/transactions/validators.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../core/failures.dart';
import '../core/validators.dart';
import '../core/value_object.dart';

@immutable
class ExpenseId extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  const ExpenseId._(this.value);

  factory ExpenseId(int input) {
    return ExpenseId._(right(input));
  }
}

@immutable
class IncomeId extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  const IncomeId._(this.value);

  factory IncomeId(int input) {
    return IncomeId._(right(input));
  }
}

@immutable
class TransactionRecipient extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const TransactionRecipient._(this.value);

  factory TransactionRecipient(String input) {
    return TransactionRecipient._(validateStringNotEmpty(input));
  }
}

@immutable
class TransactionSender extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const TransactionSender._(this.value);

  factory TransactionSender(String input) {
    return TransactionSender._(validateStringNotEmpty(input));
  }
}

@immutable
class TransactionAmount extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  const TransactionAmount._(this.value);

  factory TransactionAmount(double input) {
    return TransactionAmount._(validateAmount(input));
  }
}

@immutable
class TransactionCurrency extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const TransactionCurrency._(this.value);

  factory TransactionCurrency(String input) {
    return TransactionCurrency._(validateCurrency(input));
  }
}

@immutable
class TransactionDate extends ValueObject<DateTime> {
  @override
  final Either<ValueFailure<DateTime>, DateTime> value;

  const TransactionDate._(this.value);

  factory TransactionDate(DateTime input) {
    return TransactionDate._(right(input));
  }
}

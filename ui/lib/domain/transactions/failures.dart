import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ExpenseFailure with _$ExpenseFailure {
  const factory ExpenseFailure.unexpected() = _ExpenseUnexpected;
  const factory ExpenseFailure.notFound() = _ExpenseNotFound;
  const factory ExpenseFailure.serverError() = _ExpenseServerError;
}

@freezed
abstract class IncomeFailure with _$IncomeFailure {
  const factory IncomeFailure.unexpected() = _IncomeUnexpected;
  const factory IncomeFailure.notFound() = _IncomeNotFound;
  const factory IncomeFailure.serverError() = _IncomeServerError;
}
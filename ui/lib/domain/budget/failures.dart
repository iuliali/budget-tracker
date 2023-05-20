import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class BudgetFailures with _$BudgetFailures {
  const factory BudgetFailures.unexpected() = _Unexpected;
  const factory BudgetFailures.alreadyExists() = _AlreadyExists;
}
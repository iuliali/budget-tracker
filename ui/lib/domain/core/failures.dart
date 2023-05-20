import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'failures.freezed.dart';

abstract class Failure {}

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T>{
  const factory ValueFailure.unexpected({
    required T failedValue,
  }) = Unexpected<T>;
  const factory ValueFailure.empty({
    required T failedValue,
  }) = Empty<T>;

  // Auth Failures
  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;
  const factory ValueFailure.passwordNotMatch({
    required T failedValue,
  }) = PasswordsNotMatch<T>;
  const factory ValueFailure.shortUsername({
    required T failedValue,
  }) = ShortUsername<T>;
  const factory ValueFailure.shortFirstName({
    required T failedValue,
  }) = ShortFirstName<T>;
  const factory ValueFailure.shortLastName({
    required T failedValue,
  }) = ShortLastName<T>;

  // Categories Failures
  const factory ValueFailure.shortCategoryName({
    required T failedValue,
  }) = ShortCategoryName<T>;

  // Budget Failures
  const factory ValueFailure.negativeBudgetAmount({
    required T failedValue,
  }) = NegativeBudgetAmount<T>;
}

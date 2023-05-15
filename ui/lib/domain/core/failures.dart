import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'failures.freezed.dart';

abstract class Failure {}

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T>{
  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;
  const factory ValueFailure.shortUsername({
    required T failedValue,
  }) = ShortUsername<T>;
}

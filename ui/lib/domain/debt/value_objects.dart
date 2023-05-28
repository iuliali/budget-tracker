import 'package:budget_tracker/domain/core/validators.dart';
import 'package:dartz/dartz.dart';

import '../core/failures.dart';
import '../core/value_object.dart';

class GroupId extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory GroupId(int input) {
    return GroupId._(right(input));
  }

  const GroupId._(this.value);
}

class GroupName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory GroupName(String input) {
    return GroupName._(validateStringNotEmpty(input));
  }

  const GroupName._(this.value);
}
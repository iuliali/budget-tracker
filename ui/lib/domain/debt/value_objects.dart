import 'package:budget_tracker/domain/core/validators.dart';
import 'package:budget_tracker/domain/debt/validators.dart';
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

class DebtAmount extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory DebtAmount(double input) {
    return DebtAmount._(right(input));
  }

  factory DebtAmount.fromString(String input) {
    return DebtAmount._(validateDouble(input));
  }

  const DebtAmount._(this.value);
}

class MemberId extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory MemberId(int input) {
    return MemberId._(right(input));
  }

  const MemberId._(this.value);
}

class UserId extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory UserId(int input) {
    return UserId._(right(input));
  }

  const UserId._(this.value);
}

class MemberName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory MemberName(String input) {
    return MemberName._(validateStringNotEmpty(input));
  }

  const MemberName._(this.value);
}

class MemberUsername extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory MemberUsername(String input) {
    return MemberUsername._(validateMemberUsername(input));
  }

  const MemberUsername._(this.value);
}
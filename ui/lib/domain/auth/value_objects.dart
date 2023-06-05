import 'package:budget_tracker/domain/auth/validators.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/failures.dart';
import '../core/value_object.dart';

class UserId extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory UserId(int input) {
    return UserId._(right(input));
  }

  const UserId._(this.value);
}

@immutable
class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const EmailAddress._(this.value);

  factory EmailAddress(String input) {
    return EmailAddress._(validateEmailAddress(input));
  }
}

@immutable
class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const Password._(this.value);

  factory Password(String input) {
    return Password._(validatePassword(input));
  }
}

@immutable
class Username extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const Username._(this.value);

  factory Username(String input) {
    return Username._(validateUsername(input));
  }
}

@immutable
class FirstName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const FirstName._(this.value);

  factory FirstName(String input) {
    return FirstName._(validateFirstName(input));
  }
}

@immutable
class LastName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const LastName._(this.value);

  factory LastName(String input) {
    return LastName._(validateLastName(input));
  }
}
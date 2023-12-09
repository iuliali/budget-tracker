import 'package:budget_tracker/domain/auth/validators.dart';
import 'package:budget_tracker/domain/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  group("Email validator", () {
    test("should return valid value when email is valid", () {
      // arrange
      const email = "test@email.com";
      // act
      final result = validateEmailAddress(email);
      // assert
      expect(result, right(email));
    });

    test("should return invalid email failure when email is invalid", () {
      // arrange
      const email = "testemail.com";
      // act
      final result = validateEmailAddress(email);
      // assert
      expect(result, left(const ValueFailure.invalidEmail(failedValue: email)));
    });
  });

  group("Password Validator", () {
    test(
      'should return valid value when password is valid',
      () async {
        // arrange
        const password = "testpassword";
        // act
        final result = validatePassword(password);
        // assert
        expect(result, right(password));
      },
    );

    test(
      'should return invalid password failure when password is invalid',
      () async {
        // arrange
        const password = "test";
        // act
        final result = validatePassword(password);
        // assert
        expect(result, left(const ValueFailure.shortPassword(failedValue: password)));
      },
    );

  });
}
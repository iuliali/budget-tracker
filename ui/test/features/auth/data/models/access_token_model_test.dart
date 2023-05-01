import 'dart:convert';

import 'package:budget_tracker/features/auth/data/models/access_token_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const invalidToken = "invalid_token";
  const validToken = "eyJhbGciOiJIUzI1NiJ9.eyJmaXJzdE5hbWUiOiJWaWN0b3IiLCJyb2xlIjoiQURNSU4iLCJsYXN0TmFtZSI6Ik11cmEiLCJzdWIiOiJ0ZXN0MTIiLCJpYXQiOjE2ODI0NDg1NzYsImV4cCI6MTY4MjQ1MjE3Nn0.7x8XuPPexPUb-pjjz3jPzIokUbCawwivSavjTc5pNZ8";

  test(
    "should be a subclass of AccessToken entity",
    () async {
      // act
      final tAccessTokenModel = AccessTokenModel(
        token: validToken,
      );

      // assert
      expect(tAccessTokenModel, isA<AccessTokenModel>());
    },
  );

  test(
    "should have expireAt value",
      () async {
        // act
        final tAccessTokenModel = AccessTokenModel(
          token: validToken,
        );
        // assert
        expect(tAccessTokenModel.expiresAt, isA<DateTime>());
      }
  );

  test(
    "should have null expireAt value",
    () async {
      // act
      final tAccessTokenModel = AccessTokenModel(
        token: invalidToken,
      );
      // assert
      expect(tAccessTokenModel.expiresAt, null);
    },
  );
  
  group('fromJson', () {
    test(
      "should return a valid model when the JSON token is a string",
      () async {
        // arrange
        final Map<String, dynamic> jsonMap = json.decode(
            fixture("auth/authenticate/200_ok.json"));
        final tAccessTokenModel = AccessTokenModel(
          token: jsonMap['access_token'],
        );
        // act
        final result = AccessTokenModel.fromJson(jsonMap);

        // assert
        expect(result, isA<AccessTokenModel>());
        expect(result, tAccessTokenModel);
      },
    );
  });

  group("toJson", () {
    test(
      "should return a JSON map containing the proper data",
      () async {
        // arrange
        final tAccessTokenModel = AccessTokenModel(token: validToken);
        // act
        final result = tAccessTokenModel.toJson();
        // assert
        final expectedJsonMap = {
          "access_token": validToken,
        };
        expect(result, expectedJsonMap);
      },
    );
  });
}
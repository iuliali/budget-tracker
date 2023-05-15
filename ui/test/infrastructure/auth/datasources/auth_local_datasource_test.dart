import 'dart:convert';

import 'package:budget_tracker/infrastructure/auth/datasources/auth_local_datasource.dart';
import 'package:budget_tracker/infrastructure/auth/exceptions.dart';
import 'package:budget_tracker/infrastructure/auth/models/access_token_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../fixtures/fixture_reader.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  late AuthLocalDataSourceImpl dataSource;
  late MockSharedPreferences mockSharedPreferences;

  setUp(() {
    mockSharedPreferences = MockSharedPreferences();
    dataSource = AuthLocalDataSourceImpl(
      sharedPreferences: mockSharedPreferences,
    );
  });

  group("getLastAccessToken", () {
    final tAccessTokenModel = AccessTokenModel.fromJson(
        jsonDecode(fixture('auth/access_token_cached.json')));
    test(
      'should return AccessTokenModel from SharedPreferences when there is one in the cache',
      () async {
        // arrange
        when(() => mockSharedPreferences.getString(accessTokenCacheKey))
            .thenReturn(fixture('auth/access_token_cached.json'));
        // act
        final result = await dataSource.getCachedAccessToken();
        // assert
        verify(() => mockSharedPreferences.getString(accessTokenCacheKey));
        expect(result, equals(tAccessTokenModel));
      },
    );

    test(
      'should throw a CacheException when there is not a cached value',
      () async {
        // arrange
        when(() => mockSharedPreferences.getString(accessTokenCacheKey))
            .thenReturn(null);
        // act
        final call = dataSource.getCachedAccessToken;
        // assert
        expect(() => call(), throwsA(isA<AuthCacheException>()));
      },
    );
  });

  group("cacheAccessToken", () {
    final tAccessTokenModel = AccessTokenModel(
        token:
            "eyJhbGciOiJIUzI1NiJ9.eyJmaXJzdE5hbWUiOiJWaWN0b3IiLCJyb2xlIjoiQURNSU4iLCJsYXN0TmFtZSI6Ik11cmEiLCJzdWIiOiJ0ZXN0MTIiLCJpYXQiOjE2ODI0NDg1NzYsImV4cCI6MTY4MjQ1MjE3Nn0.7x8XuPPexPUb-pjjz3jPzIokUbCawwivSavjTc5pNZ8");

    test(
      'should call SharedPreferences to cache the data',
      () async {
        // arrange
        final future = Future.value(true);
        when(() => mockSharedPreferences.setString(any(), any()))
            .thenAnswer((_) => future);
        // act
        final result = dataSource.cacheAccessToken(tAccessTokenModel);
        // assert
        final expectedJsonString = jsonEncode(tAccessTokenModel.toJson());
        verify(() => mockSharedPreferences.setString(
              accessTokenCacheKey,
              expectedJsonString,
            ));
        expect(result, future);
      },
    );
  });
}

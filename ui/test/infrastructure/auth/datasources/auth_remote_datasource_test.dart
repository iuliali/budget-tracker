import 'dart:convert';

import "package:budget_tracker/infrastructure/auth/datasources/auth_remote_datasource.dart";
import 'package:budget_tracker/infrastructure/auth/exceptions.dart';
import 'package:budget_tracker/infrastructure/auth/models/access_token_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../fixtures/fixture_reader.dart';

class MockDioClient extends Mock implements Dio {}

void main() {
  late AuthApiDataSourceImpl dataSource;
  late MockDioClient mockDioClient;

  setUp(() {
    mockDioClient = MockDioClient();
    dataSource = AuthApiDataSourceImpl(
      mockDioClient,
    );
  });

  group("login", () {
    final tAccessTokenModel = AccessTokenModel.fromJson(
      jsonDecode(fixture("auth/authenticate/200_ok.json")),
    );

    const tUsername = "testusername";
    const tPassword = "testpassword";

    void setUpMockHttpClient(String body, int statusCode) {
      when(
        () => mockDioClient.post(
          'auth/authenticate',
          data: jsonEncode({'username': tUsername, 'password': tPassword}),
        ),
      ).thenAnswer(
        (_) async => Response(
          data: jsonDecode(body),
          statusCode: statusCode,
          requestOptions: RequestOptions(
            path: 'auth/authenticate',
            method: "POST",
          ),
        ),
      );
    }

    test('''should perform a POST request on a URL with username and password 
      and with application/json header''', () async {
      // arrange
      setUpMockHttpClient(fixture("auth/authenticate/200_ok.json"), 200);

      // act
      await dataSource.login(username: tUsername, password: tPassword);

      // assert
      verify(
        () => mockDioClient.post(
          'auth/authenticate',
          data: {'username': tUsername, 'password': tPassword},
        ),
      );
    });

    test(
      'should return AccessTokenModel when the response code is 200 (success)',
      () async {
        // arrange
        setUpMockHttpClient(fixture("auth/authenticate/200_ok.json"), 200);
        // act
        final result = await dataSource.login(
          username: tUsername,
          password: tPassword,
        );
        // assert
        expect(result, equals(tAccessTokenModel));
      },
    );

    test(
      'should throw InvalidCredentialsException when the response code is 401 (unauthorized)',
      () async {
        // arrange
        setUpMockHttpClient("Unauthorized", 401);
        // act
        final call = dataSource.login;
        // assert
        expect(
          () => call(username: tUsername, password: tPassword),
          throwsA(isA<InvalidCredentialsException>()),
        );
      },
    );

    test(
      'should throw ServerException when the response code is 500 (server error)',
      () async {
        // arrange
        setUpMockHttpClient("Server Error", 500);
        // act
        final call = dataSource.login;
        // assert
        expect(
          () => call(username: "testusername", password: "testpassword"),
          throwsA(isA<AuthServerException>()),
        );
      },
    );
  });

  group("register", () {
    const tUsername = "testusername";
    const tPassword = "testpassword";
    const tEmail = "testemail@email.com";
    const tFirstName = "testfirstname";
    const tLastName = "testlastname";

    void setUpMockDioClient(String body, int statusCode) {
      when(
        () => mockDioClient.post(
          'auth/register',
          data: {
            'username': tUsername,
            'password': tPassword,
            'email': tEmail,
            "firstName": tFirstName,
            "lastName": tLastName,
          },
        ),
      ).thenAnswer(
        (_) async => Response(
          data: jsonDecode(body),
          statusCode: statusCode,
          requestOptions: RequestOptions(
            path: 'auth/register',
            method: "POST",
          ),
        )
      );
    }

    test(
      """should perform a POST request on a URL with username, password, email, 
      firstName and lastName and with application/json header""",
      () async {
        // arrange
        setUpMockDioClient(fixture("auth/register/200_ok.json"), 200);
        // act
        await dataSource.register(
          username: tUsername,
          password: tPassword,
          email: tEmail,
          firstName: tFirstName,
          lastName: tLastName,
        );
        // assert
        verify(
          () => mockDioClient.post(
            'auth/register',
            data: {
              'username': tUsername,
              'password': tPassword,
              'email': tEmail,
              "firstName": tFirstName,
              "lastName": tLastName,
            },
          ),
        );
      },
    );

    test(
      "should return true when the response code is 200 (success)",
      () async {
        // arrange
        setUpMockDioClient(fixture("auth/register/200_ok.json"), 200);
        // act
        final result = await dataSource.register(
          username: tUsername,
          password: tPassword,
          email: tEmail,
          firstName: tFirstName,
          lastName: tLastName,
        );
        // assert
        expect(result, equals(true));
      },
    );

    test(
      'should throw EmailAlreadyUsedException when the response code is 409 (conflict)',
      () async {
        // arrange
        setUpMockDioClient(fixture("auth/register/409_email_used.json"), 409);
        // act
        final call = dataSource.register;
        // assert
        expect(
          () => call(
            username: tUsername,
            password: tPassword,
            email: tEmail,
            firstName: tFirstName,
            lastName: tLastName,
          ),
          throwsA(isA<EmailAlreadyUsedException>()),
        );
      },
    );

    test(
      'should throw UsernameAlreadyUsedException when the response code is 409 (conflict)',
      () async {
        // arrange
        setUpMockDioClient(fixture("auth/register/409_username_used.json"), 409);
        // act
        final call = dataSource.register;
        // assert
        expect(
          () => call(
            username: tUsername,
            password: tPassword,
            email: tEmail,
            firstName: tFirstName,
            lastName: tLastName,
          ),
          throwsA(isA<UsernameAlreadyUsedException>()),
        );
      },
    );

    test(
      "should throw ServerException when the response code is 500 (server error)",
      () async {
        // arrange
        setUpMockDioClient("Server Error", 500);
        // act
        final call = dataSource.register;
        // assert
        expect(
          () => call(
            username: tUsername,
            password: tPassword,
            email: tEmail,
            firstName: tFirstName,
            lastName: tLastName,
          ),
          throwsA(isA<AuthServerException>()),
        );
      },
    );

  });
}

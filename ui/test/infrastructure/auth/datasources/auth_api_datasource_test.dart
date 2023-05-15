import 'dart:convert';

import 'package:budget_tracker/infrastructure/auth/datasources/auth_api_datasource.dart';
import 'package:budget_tracker/infrastructure/auth/exceptions.dart';
import 'package:budget_tracker/infrastructure/auth/models/access_token_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:http/http.dart' as http;

import '../../../fixtures/fixture_reader.dart';

class MockHttpClient extends Mock implements http.Client {}

void main() {
  late AuthApiDataSourceImpl dataSource;
  late MockHttpClient mockHttpClient;

  setUp(() {
    mockHttpClient = MockHttpClient();
    dataSource = AuthApiDataSourceImpl(
      client: mockHttpClient,
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
        () => mockHttpClient.post(
          Uri.parse('http://localhost:8081/api/v1/auth/authenticate'),
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode({'username': tUsername, 'password': tPassword}),
        ),
      ).thenAnswer(
        (_) async => http.Response(body, statusCode),
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
        () => mockHttpClient.post(
          Uri.parse('http://localhost:8081/api/v1/auth/authenticate'),
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode({'username': tUsername, 'password': tPassword}),
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

    void setUpMockHttpClient(String body, int statusCode) {
      when(
        () => mockHttpClient.post(
          Uri.parse('http://localhost:8081/api/v1/auth/register'),
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode({
            'username': tUsername,
            'password': tPassword,
            'email': tEmail,
            "firstName": tFirstName,
            "lastName": tLastName,
          }),
        ),
      ).thenAnswer(
        (_) async => http.Response(body, statusCode),
      );
    }

    test(
      """should perform a POST request on a URL with username, password, email, 
      firstName and lastName and with application/json header""",
      () async {
        // arrange
        setUpMockHttpClient(fixture("auth/register/200_ok.json"), 200);
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
          () => mockHttpClient.post(
            Uri.parse('http://localhost:8081/api/v1/auth/register'),
            headers: {'Content-Type': 'application/json'},
            body: jsonEncode({
              'username': tUsername,
              'password': tPassword,
              'email': tEmail,
              "firstName": tFirstName,
              "lastName": tLastName,
            }),
          ),
        );
      },
    );

    test(
      "should return true when the response code is 200 (success)",
      () async {
        // arrange
        setUpMockHttpClient(fixture("auth/register/200_ok.json"), 200);
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
        setUpMockHttpClient(fixture("auth/register/409_email_used.json"), 409);
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
        setUpMockHttpClient(fixture("auth/register/409_username_used.json"), 409);
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
        setUpMockHttpClient("Server Error", 500);
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

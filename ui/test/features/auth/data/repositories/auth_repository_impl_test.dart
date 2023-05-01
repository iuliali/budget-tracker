import 'package:budget_tracker/core/domain/error/exceptions.dart';
import 'package:budget_tracker/core/domain/error/failures.dart';
import 'package:budget_tracker/core/data/network/network_info.dart';
import 'package:budget_tracker/features/auth/data/datasources/auth_api_datasource.dart';
import 'package:budget_tracker/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:budget_tracker/features/auth/data/models/access_token_model.dart';
import 'package:budget_tracker/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:budget_tracker/features/auth/domain/error/exception.dart';
import 'package:budget_tracker/features/auth/domain/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthRemoteDataSource extends Mock implements AuthRemoteDataSource {}

class MockAuthLocalDataSource extends Mock implements AuthLocalDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  late AuthRepositoryImpl repository;
  late MockAuthRemoteDataSource mockAuthRemoteDataSource;
  late MockAuthLocalDataSource mockAuthLocalDataSource;
  late MockNetworkInfo mockNetworkInfo;

  setUp(() {
    mockAuthRemoteDataSource = MockAuthRemoteDataSource();
    mockAuthLocalDataSource = MockAuthLocalDataSource();
    mockNetworkInfo = MockNetworkInfo();
    repository = AuthRepositoryImpl(
      remoteDataSource: mockAuthRemoteDataSource,
      localDataSource: mockAuthLocalDataSource,
      networkInfo: mockNetworkInfo,
    );
  });

  void runTestsOnline(Function body) {
    group('device is online', () {
      setUp(() {
        when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      });
      body();
    });
  }

  void runTestsOffline(Function body) {
    group('device is offline', () {
      setUp(() {
        when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => false);
      });
      body();
    });
  }

  group('login', () {
    const tUsername = "username";
    const tPassword = "password1234";
    const validToken =
        "eyJhbGciOiJIUzI1NiJ9.eyJmaXJzdE5hbWUiOiJWaWN0b3IiLCJyb2xlIjoiQURNSU4iLCJsYXN0TmFtZSI6Ik11cmEiLCJzdWIiOiJ0ZXN0MTIiLCJpYXQiOjE2ODI0NDg1NzYsImV4cCI6MTY4MjQ1MjE3Nn0.7x8XuPPexPUb-pjjz3jPzIokUbCawwivSavjTc5pNZ8";
    final tAccessTokeModel = AccessTokenModel(token: validToken);
    final tAccessToken = tAccessTokeModel;

    test(
      "should check if device is online",
      () async {
        // arrange
        when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
        when(() => mockAuthRemoteDataSource.login(
              username: any(named: "username"),
              password: any(named: "password"),
            )).thenAnswer((_) async => tAccessTokeModel);
        when(() => mockAuthLocalDataSource.cacheAccessToken(tAccessToken))
            .thenAnswer((_) async => true);
        // act
        await repository.login(username: tUsername, password: tPassword);
        // assert
        verify(() => mockNetworkInfo.isConnected);
      },
    );

    runTestsOnline(() {
      test(
        'should return an AccessToken when the call to remote data source is successful',
        () async {
          // arrange
          when(() => mockAuthRemoteDataSource.login(
                username: any(named: "username"),
                password: any(named: "password"),
              )).thenAnswer((_) async => tAccessTokeModel);
          when(() => mockAuthLocalDataSource.cacheAccessToken(tAccessToken))
              .thenAnswer((_) async => true);
          // act
          final result =
              await repository.login(username: tUsername, password: tPassword);
          // assert
          verify(() => mockAuthRemoteDataSource.login(
                username: tUsername,
                password: tPassword,
              ));
          expect(result, equals(Right(tAccessToken)));
        },
      );

      test(
        'should cache the data locally when the call to remote data source is successful',
        () async {
          // arrange
          when(() => mockAuthRemoteDataSource.login(
                username: any(named: "username"),
                password: any(named: "password"),
              )).thenAnswer((_) async => tAccessTokeModel);
          when(() => mockAuthLocalDataSource.cacheAccessToken(tAccessToken))
              .thenAnswer((_) async => true);
          // act
          await repository.login(username: tUsername, password: tPassword);
          // assert
          verify(() => mockAuthRemoteDataSource.login(
                username: tUsername,
                password: tPassword,
              ));
          verify(() => mockAuthLocalDataSource.cacheAccessToken(tAccessToken));
        },
      );

      test(
        "should return a InvalidCredentialsFailure when the call to remote data source is unsuccessful",
        () async {
          // arrange
          when(() => mockAuthRemoteDataSource.login(
                username: any(named: "username"),
                password: any(named: "password"),
              )).thenThrow(InvalidCredentialsException());
          // act
          final result = await repository.login(
            username: tUsername,
            password: tPassword,
          );
          // assert
          verify(() => mockAuthRemoteDataSource.login(
                username: tUsername,
                password: tPassword,
              ));
          verifyZeroInteractions(mockAuthLocalDataSource);
          expect(result, equals(Left(InvalidCredentialsFailure())));
        },
      );

      test(
        'should return a ServerFailure when the call to remote data source is unsuccessful',
        () async {
          // arrange
          when(() => mockAuthRemoteDataSource.login(
                username: any(named: "username"),
                password: any(named: "password"),
              )).thenThrow(ServerException());
          // act
          final result = await repository.login(
            username: tUsername,
            password: tPassword,
          );
          // assert
          verify(() => mockAuthRemoteDataSource.login(
                username: tUsername,
                password: tPassword,
              ));
          verifyZeroInteractions(mockAuthLocalDataSource);
          expect(result, equals(Left(ServerFailure())));
        },
      );
    });

    runTestsOffline((){
      test(
        'should return last cached data when the cached data is present',
        () async {
          // arrange
          when(() => mockAuthLocalDataSource.getLastAccessToken())
              .thenAnswer((_) async => tAccessTokeModel);
          // act
          final result = await repository.login(
            username: tUsername,
            password: tPassword,
          );
          // assert
          verifyZeroInteractions(mockAuthRemoteDataSource);
          verify(() => mockAuthLocalDataSource.getLastAccessToken());
          expect(result, equals(Right(tAccessToken)));
        },
      );

      test(
        'should return CacheFailure when there is no cached data present',
        () async {
          // arrange
          when(() => mockAuthLocalDataSource.getLastAccessToken())
              .thenThrow(CacheException());
          // act
          final result = await repository.login(
            username: tUsername,
            password: tPassword,
          );
          // assert
          verifyZeroInteractions(mockAuthRemoteDataSource);
          verify(() => mockAuthLocalDataSource.getLastAccessToken());
          expect(result, equals(Left(CacheFailure())));
        },
      );
    });
  });

  group('register', () {
    const tUsername = "username";
    const tPassword = "password1234";
    const tEmail = "user@test.com";
    const tFirstName = "User";
    const tLastName = "Test";

    test(
      'should check if device is online',
      () async {
        // arrange
        when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
        when(() => mockAuthRemoteDataSource.register(
              username: any(named: "username"),
              password: any(named: "password"),
              email: any(named: "email"),
              firstName: any(named: "firstName"),
              lastName: any(named: "lastName"),
            )).thenAnswer((_) async => true);

        // act
        await repository.register(
          username: tUsername,
          password: tPassword,
          email: tEmail,
          firstName: tFirstName,
          lastName: tLastName,
        );
        // assert
        verify(() => mockNetworkInfo.isConnected);
      },
    );

    runTestsOnline(() {
      test(
        'should return true when the call to remote data source is successful',
        () async {
          // arrange
          when(() => mockAuthRemoteDataSource.register(
                username: any(named: "username"),
                password: any(named: "password"),
                email: any(named: "email"),
                firstName: any(named: "firstName"),
                lastName: any(named: "lastName"),
              )).thenAnswer((_) async => true);
          // act
          final result = await repository.register(
            username: tUsername,
            password: tPassword,
            email: tEmail,
            firstName: tFirstName,
            lastName: tLastName,
          );
          // assert
          verify(() => mockAuthRemoteDataSource.register(
                username: tUsername,
                password: tPassword,
                email: tEmail,
                firstName: tFirstName,
                lastName: tLastName,
              ));
          expect(result, equals(const Right(true)));
        },
      );

      test(
        'should return ServerFailure when the call to remote data source is unsuccessful',
        () async {
          // arrange
          when(() => mockAuthRemoteDataSource.register(
                username: any(named: "username"),
                password: any(named: "password"),
                email: any(named: "email"),
                firstName: any(named: "firstName"),
                lastName: any(named: "lastName"),
              )).thenThrow(ServerException());
          // act
          final result = await repository.register(
            username: tUsername,
            password: tPassword,
            email: tEmail,
            firstName: tFirstName,
            lastName: tLastName,
          );
          // assert
          verify(() => mockAuthRemoteDataSource.register(
                username: tUsername,
                password: tPassword,
                email: tEmail,
                firstName: tFirstName,
                lastName: tLastName,
              ));
          expect(result, equals(Left(ServerFailure())));
        },
      );

      test(
        'should return EmailAlreadyInUseFailure when the email is already in use',
        () async {
          // arrange
          when(() => mockAuthRemoteDataSource.register(
                username: any(named: "username"),
                password: any(named: "password"),
                email: any(named: "email"),
                firstName: any(named: "firstName"),
                lastName: any(named: "lastName"),
              )).thenThrow(EmailAlreadyUsedException());
          // act
          final result = await repository.register(
            username: tUsername,
            password: tPassword,
            email: tEmail,
            firstName: tFirstName,
            lastName: tLastName,
          );
          // assert
          verify(() => mockAuthRemoteDataSource.register(
                username: tUsername,
                password: tPassword,
                email: tEmail,
                firstName: tFirstName,
                lastName: tLastName,
              ));
          expect(result, equals(Left(EmailAlreadyUsedFailure())));
        },
      );

      test(
        'should return UsernameAlreadyInUseFailure when the username is already in use',
        () async {
          // arrange
          when(() => mockAuthRemoteDataSource.register(
                username: any(named: "username"),
                password: any(named: "password"),
                email: any(named: "email"),
                firstName: any(named: "firstName"),
                lastName: any(named: "lastName"),
              )).thenThrow(UsernameAlreadyUsedException());
          // act
          final result = await repository.register(
            username: tUsername,
            password: tPassword,
            email: tEmail,
            firstName: tFirstName,
            lastName: tLastName,
          );
          // assert
          verify(() => mockAuthRemoteDataSource.register(
                username: tUsername,
                password: tPassword,
                email: tEmail,
                firstName: tFirstName,
                lastName: tLastName,
              ));
          expect(result, equals(Left(UsernameAlreadyUsedFailure())));
        },
      );
    });

    runTestsOffline (() {
      test(
        'should return ConnectionFailure when the device is offline',
        () async {
          // act
          final result = await repository.register(
            username: tUsername,
            password: tPassword,
            email: tEmail,
            firstName: tFirstName,
            lastName: tLastName,
          );
          // assert
          verifyZeroInteractions(mockAuthRemoteDataSource);
          expect(result, equals(Left(ConnectionFailure())));
        },
      );
    });
  });
}

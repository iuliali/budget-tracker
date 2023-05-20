import 'package:budget_tracker/application/core/network_info.dart';
import 'package:budget_tracker/domain/auth/failures.dart';
import 'package:budget_tracker/domain/auth/value_objects.dart';
import 'package:budget_tracker/infrastructure/auth/datasources/auth_remote_datasource.dart';
import 'package:budget_tracker/infrastructure/auth/datasources/auth_local_datasource.dart';
import 'package:budget_tracker/infrastructure/auth/exceptions.dart';
import 'package:budget_tracker/infrastructure/auth/facade.dart';
import 'package:budget_tracker/infrastructure/auth/models/access_token_model.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthRemoteDataSource extends Mock implements AuthRemoteDataSource {}

class MockAuthLocalDataSource extends Mock implements AuthLocalDataSource {}

class MockNetworkInfo extends Mock implements INetworkInfo {}

void main() {
  late AuthFacade repository;
  late MockAuthRemoteDataSource mockAuthRemoteDataSource;
  late MockAuthLocalDataSource mockAuthLocalDataSource;
  late MockNetworkInfo mockNetworkInfo;

  setUp(() {
    mockAuthRemoteDataSource = MockAuthRemoteDataSource();
    mockAuthLocalDataSource = MockAuthLocalDataSource();
    mockNetworkInfo = MockNetworkInfo();
    repository = AuthFacade(
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
    final tUsername = Username("username");
    final tPassword = Password("password1234");
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
        'should return an Unit(null) when the call to remote data source is successful',
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
            username: tUsername.getOrCrash(),
            password: tPassword.getOrCrash(),
          ));
          expect(result, equals(const Right(unit)));
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
            username: tUsername.getOrCrash(),
            password: tPassword.getOrCrash(),
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
            username: tUsername.getOrCrash(),
            password: tPassword.getOrCrash(),
          ));
          verifyZeroInteractions(mockAuthLocalDataSource);
          expect(result, equals(const Left(AuthFailure.invalidUsernameAndPasswordCombination())));
        },
      );

      test(
        'should return a ServerFailure when the call to remote data source is unsuccessful',
            () async {
          // arrange
          when(() => mockAuthRemoteDataSource.login(
            username: any(named: "username"),
            password: any(named: "password"),
          )).thenThrow(AuthServerException());
          // act
          final result = await repository.login(
            username: tUsername,
            password: tPassword,
          );
          // assert
          verify(() => mockAuthRemoteDataSource.login(
            username: tUsername.getOrCrash(),
            password: tPassword.getOrCrash(),
          ));
          verifyZeroInteractions(mockAuthLocalDataSource);
          expect(result, equals(const Left(AuthFailure.serverError())));
        },
      );
    });

    runTestsOffline((){
      test(
        'should return unit null when the cached data is present',
            () async {
          // arrange
          when(() => mockAuthLocalDataSource.getCachedAccessToken())
              .thenAnswer((_) async => tAccessTokeModel);
          // act
          final result = await repository.login(
            username: tUsername,
            password: tPassword,
          );
          // assert
          verifyZeroInteractions(mockAuthRemoteDataSource);
          verify(() => mockAuthLocalDataSource.getCachedAccessToken());
          expect(result, equals(const Right(unit)));
        },
      );

      test(
        'should return CacheFailure when there is no cached data present',
            () async {
          // arrange
          when(() => mockAuthLocalDataSource.getCachedAccessToken())
              .thenThrow(AuthCacheException());
          // act
          final result = await repository.login(
            username: tUsername,
            password: tPassword,
          );
          // assert
          verifyZeroInteractions(mockAuthRemoteDataSource);
          verify(() => mockAuthLocalDataSource.getCachedAccessToken());
          expect(result, equals(const Left(AuthFailure.cacheError())));
        },
      );
    });
  });

  group('register', () {
    final tUsername = Username("username");
    final tPassword = Password("password1234");
    final tEmail = EmailAddress("user@test.com");
    final tFirstName = FirstName("User");
    final tLastName = LastName("Test");

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
            username: tUsername.getOrCrash(),
            password: tPassword.getOrCrash(),
            email: tEmail.getOrCrash(),
            firstName: tFirstName.getOrCrash(),
            lastName: tLastName.getOrCrash(),
          ));
          expect(result, equals(const Right(unit)));
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
          )).thenThrow(AuthServerException());
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
            username: tUsername.getOrCrash(),
            password: tPassword.getOrCrash(),
            email: tEmail.getOrCrash(),
            firstName: tFirstName.getOrCrash(),
            lastName: tLastName.getOrCrash(),
          ));
          expect(result, equals(const Left(AuthFailure.serverError())));
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
            username: tUsername.getOrCrash(),
            password: tPassword.getOrCrash(),
            email: tEmail.getOrCrash(),
            firstName: tFirstName.getOrCrash(),
            lastName: tLastName.getOrCrash(),
          ));
          expect(result, equals(const Left(AuthFailure.emailAlreadyInUse())));
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
            username: tUsername.getOrCrash(),
            password: tPassword.getOrCrash(),
            email: tEmail.getOrCrash(),
            firstName: tFirstName.getOrCrash(),
            lastName: tLastName.getOrCrash(),
          ));
          expect(result, equals(const Left(AuthFailure.usernameAlreadyInUse())));
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
          expect(result, equals(const Left(AuthFailure.connectionError())));
        },
      );
    });
  });
}

import 'package:budget_tracker/core/platform/network_info.dart';
import 'package:budget_tracker/features/auth/data/datasources/auth_api_datasource.dart';
import 'package:budget_tracker/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:budget_tracker/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthRemoteDataSource extends Mock
    implements AuthRemoteDataSource {}

class MockAuthLocalDataSource extends Mock
    implements AuthLocalDataSource {}

class MockNetworkInfo extends Mock
    implements NetworkInfo {}

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

  group('signIn', () {
    test('should return an AccessToken when the call to remote data source is successful', () async {
      // arrange
      // act
      // assert
    });

    test('should cache the data locally when the call to remote data source is successful', () async {
      // arrange
      // act
      // assert
    });

    test('should return a ServerFailure when the call to remote data source is unsuccessful', () async {
      // arrange
      // act
      // assert
    });
  });

  group('signUp', () {
    test('should return true when the call to remote data source is successful', () async {
      // arrange
      // act
      // assert
    });

    test('should return a ServerFailure when the call to remote data source is unsuccessful', () async {
      // arrange
      // act
      // assert
    });
  });
}
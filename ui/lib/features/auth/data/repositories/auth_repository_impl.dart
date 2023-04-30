import 'package:budget_tracker/core/error/failures.dart';

import 'package:budget_tracker/features/auth/domain/entities/access_token.dart';

import 'package:dartz/dartz.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/platform/network_info.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_api_datasource.dart';
import '../datasources/auth_local_datasource.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  AuthRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, AccessToken>> login({
    required String username,
    required String password,
  }) async {
    if (await networkInfo.isConnected){
      try {
        final remoteAccessToken = await remoteDataSource.login(
          username: username,
          password: password,
        );
        localDataSource.cacheAccessToken(remoteAccessToken);
        return Right(remoteAccessToken);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localAccessToken = await localDataSource.getLastAccessToken();
        return Right(localAccessToken);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, bool>> register({
    required String username,
    required String password,
    required String email,
    required String firstName,
    required String lastName,
  }) async {
    if (!await networkInfo.isConnected) {
      return Left(ConnectionFailure());
    }
    try {
      await remoteDataSource.register(
        username: username,
        password: password,
        email: email,
        firstName: firstName,
        lastName: lastName,
      );
      return const Right(true);
    } on EmailAlreadyUsedException {
      return Left(EmailAlreadyUsedFailure());
    } on UsernameAlreadyUsedException {
      return Left(UsernameAlreadyUsedFailure());
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}

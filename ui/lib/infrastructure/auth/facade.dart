import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../application/core/network/network_info.dart';
import '../../domain/auth/failures.dart';
import '../../domain/auth/value_objects.dart';
import '../../domain/auth/facade.dart';
import 'datasources/auth_api_datasource.dart';
import 'datasources/auth_local_datasource.dart';
import 'exceptions.dart';

@LazySingleton(as: IAuthFacade)
class AuthFacade implements IAuthFacade {
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  AuthFacade({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<AuthFailure, Unit>> login({
    required Username username,
    required Password password,
  }) async {
    final usernameStr = username.getOrCrash();
    final passwordStr = password.getOrCrash();
    if (!await networkInfo.isConnected) {
      try {
        await localDataSource.getCachedAccessToken();
        return const Right(unit);
      } on AuthCacheException {
        return const Left(AuthFailure.cacheError());
      }
    }
    try {
      final remoteAccessToken = await remoteDataSource.login(
        username: usernameStr,
        password: passwordStr,
      );
      localDataSource.cacheAccessToken(remoteAccessToken);
      return const Right(unit);
    } on InvalidCredentialsException {
      return const Left(AuthFailure.invalidUsernameAndPasswordCombination());
    } on AuthServerException {
      return const Left(AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> register({
    required Username username,
    required Password password,
    required EmailAddress email,
    required FirstName firstName,
    required LastName lastName,
  }) async {
    final usernameStr = username.getOrCrash();
    final passwordStr = password.getOrCrash();
    final emailStr = email.getOrCrash();
    final firstNameStr = firstName.getOrCrash();
    final lastNameStr = lastName.getOrCrash();
    if (!await networkInfo.isConnected) {
      return const Left(AuthFailure.connectionError());
    }
    try {
      await remoteDataSource.register(
        username: usernameStr,
        password: passwordStr,
        email: emailStr,
        firstName: firstNameStr,
        lastName: lastNameStr,
      );
      return const Right(unit);
    } on EmailAlreadyUsedException {
      return const Left(AuthFailure.emailAlreadyInUse());
    } on UsernameAlreadyUsedException {
      return const Left(AuthFailure.usernameAlreadyInUse());
    } on AuthServerException {
      return const Left(AuthFailure.serverError());
    }
  }
}

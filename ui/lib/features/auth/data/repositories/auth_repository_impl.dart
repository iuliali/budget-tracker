import 'package:budget_tracker/core/error/failures.dart';

import 'package:budget_tracker/features/auth/domain/entities/access_token.dart';

import 'package:dartz/dartz.dart';

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
  Future<Either<Failure, AccessToken>> signIn({
    required String username,
    required String password,
  }) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, bool>> signUp({
    required String username,
    required String password,
    required String email,
    required String firstName,
    required String lastName,
  }) {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}

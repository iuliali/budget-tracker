import 'package:budget_tracker/features/auth/domain/entities/access_token.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';

abstract class AuthRepository {
  Future<Either<Failure, AccessToken>> signIn({
    required String username,
    required String password,
  });
  Future<Either<Failure, bool>> signUp({
    required String username,
    required String password,
    required String email,
    required String firstName,
    required String lastName,
  });
}

import 'package:budget_tracker/domain/auth/failures.dart';
import 'package:budget_tracker/domain/auth/value_objects.dart';
import 'package:dartz/dartz.dart';

import 'entities/user.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> login({
    required Username username,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> register({
    required Username username,
    required Password password,
    required EmailAddress email,
    required FirstName firstName,
    required LastName lastName,
  });

  Future<Option<User>> getSignedInUser();
  Future<void> signOut();

  Future<Either<AuthFailure, List<User>>> getUsers();
}
import 'package:budget_tracker/core/error/failures.dart';
import 'package:budget_tracker/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/usecases/usecase.dart';

class SignUp implements UseCase<bool, SignUpParams> {
  final AuthRepository repository;

  SignUp(this.repository);

  @override
  Future<Either<Failure, bool>> call(SignUpParams params) async {
    return await repository.signUp(
      firstName: params.firstName,
      lastName: params.lastName,
      email: params.email,
      username: params.username,
      password: params.password,
    );
  }
}

class SignUpParams {
  final String firstName;
  final String lastName;
  final String email;
  final String username;
  final String password;

  SignUpParams({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.username,
    required this.password,
  });
}
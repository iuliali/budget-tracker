import 'package:dartz/dartz.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/domain/error/failures.dart';
import '../repositories/auth_repository.dart';

class Register implements UseCase<bool, RegisterParams> {
  final AuthRepository repository;

  Register(this.repository);

  @override
  Future<Either<Failure, bool>> call(RegisterParams params) async {
    return await repository.register(
      firstName: params.firstName,
      lastName: params.lastName,
      email: params.email,
      username: params.username,
      password: params.password,
    );
  }
}

class RegisterParams {
  final String firstName;
  final String lastName;
  final String email;
  final String username;
  final String password;

  RegisterParams({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.username,
    required this.password,
  });
}
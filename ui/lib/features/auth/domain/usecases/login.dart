import 'package:dartz/dartz.dart';

import '../../../../core/domain/error/failures.dart';
import '../../../../core/domain/usecases/usecase.dart';
import '../entities/access_token.dart';
import '../repositories/auth_repository.dart';

class Login implements UseCase<AccessToken, LoginParams>{
  final AuthRepository repository;

  Login(this.repository);

  @override
  Future<Either<Failure, AccessToken>> call(LoginParams params) async {
    return await repository.login(
      username: params.username,
      password: params.password,
    );
  }
}

class LoginParams {
  final String username;
  final String password;

  LoginParams({
    required this.username,
    required this.password,
  });
}
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/access_token.dart';
import '../repositories/auth_repository.dart';

class SignIn implements UseCase<AccessToken, SignInParams>{
  final AuthRepository repository;

  SignIn(this.repository);

  @override
  Future<Either<Failure, AccessToken>> call(SignInParams params) async {
    return await repository.signIn(
      username: params.username,
      password: params.password,
    );
  }
}

class SignInParams {
  final String username;
  final String password;

  SignInParams({
    required this.username,
    required this.password,
  });
}
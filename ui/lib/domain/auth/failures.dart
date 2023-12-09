import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/failures.dart';

part 'failures.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure implements Failure {
  const factory AuthFailure.invalidUsernameAndPasswordCombination() =
      InvalidUsernameAndPasswordCombination;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailure.usernameAlreadyInUse() = UsernameAlreadyInUse;
  const factory AuthFailure.passwordsNotMatch() = PasswordsNotMatch;
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.cacheError() = CacheError;
  const factory AuthFailure.connectionError() = ConnectionError;
}
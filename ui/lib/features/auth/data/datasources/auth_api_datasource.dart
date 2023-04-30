import 'package:budget_tracker/core/error/exceptions.dart';

import '../models/access_token_model.dart';

abstract class AuthRemoteDataSource {
  /// Calls the API using the [username] and [password] to get an access token.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<AccessTokenModel> login({String username, String password});

  /// Calls the API using the [username], [password], [email], [firstName], and [lastName] to register a new user.
  ///
  /// Throws [EmailAlreadyUsedException], [UsernameAlreadyUsedException] for 409 error codes
  /// And [ServerException] for all unknown error codes.
  Future<bool> register({
    String username,
    String password,
    String email,
    String firstName,
    String lastName,
  });
}

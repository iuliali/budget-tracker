import 'dart:convert';
import 'package:budget_tracker/infrastructure/auth/contracts/authenticate_response.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../../../config.dart';
import '../exceptions.dart';
import '../models/access_token_model.dart';
import '../models/user_model.dart';

abstract class AuthRemoteDataSource {
  /// Calls the API using the [username] and [password] to get an access token.
  ///
  /// Throws [InvalidCredentialsException], [ServerException] for all error codes.
  Future<AccessTokenModel> login({
    required String username,
    required String password,
  });

  /// Calls the API using the [username], [password], [email], [firstName], and [lastName] to register a new user.
  ///
  /// Throws [EmailAlreadyUsedException], [UsernameAlreadyUsedException] for 409 error codes
  /// And [ServerException] for all unknown error codes.
  Future<bool> register({
    required String username,
    required String password,
    required String email,
    required String firstName,
    required String lastName,
  });

  /// Calls the API using the [accessToken] to get the user.
  ///
  /// Throws [ServerException] for all error codes.
  Future<UserModel> getUser({
    required AccessTokenModel accessToken,
  });
}

const USERNAME_ALREADY_USED_MESSAGE = "A user is already registered with this username. ";
const EMAIL_ALREADY_USED_MESSAGE = "A user is already registered with this email. Please log in if you already have an account.";

@LazySingleton(as: AuthRemoteDataSource)
class AuthApiDataSourceImpl implements AuthRemoteDataSource {
  final Dio client;

  AuthApiDataSourceImpl(this.client);

  @override
  Future<AccessTokenModel> login({
    required String username,
    required String password,
  }) async {
    try {
      final response = await client.post(
        "/auth/authenticate",
        data: {'username': username, 'password': password},
      );
      return AccessTokenModel.fromJson(response.data);
    } on DioError catch (e) {
      if (e.response?.statusCode == 401) {
        throw InvalidCredentialsException();
      } else {
        throw AuthServerException();
      }
    }
  }

  @override
  Future<bool> register({
    required String username,
    required String password,
    required String email,
    required String firstName,
    required String lastName,
  }) async {
    final response = await client.post(
      "/auth/register",
      data: {
        'username': username,
        'password': password,
        'email': email,
        'firstName': firstName,
        'lastName': lastName,
      },
    );
    if (response.statusCode == 200) {
      return true;
    } else if (response.statusCode == 409) {
      final body = jsonDecode(response.data);
      if (body['message'] == EMAIL_ALREADY_USED_MESSAGE) {
        throw EmailAlreadyUsedException();
      } else if (body['message'] == USERNAME_ALREADY_USED_MESSAGE) {
        throw UsernameAlreadyUsedException();
      } else {
        throw AuthServerException();
      }
    } else {
      throw AuthServerException();
    }
  }

  @override
  Future<UserModel> getUser({required AccessTokenModel accessToken}) async {
    final response = await client.get(
      "/user/details",
    );
    if (response.statusCode == 200) {
      return UserModel.fromJson(jsonDecode(response.data));
    } else {
      throw AuthServerException();
    }
  }
}

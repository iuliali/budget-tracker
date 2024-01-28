import 'package:budget_tracker/application/auth/auth_bloc.dart';
import 'package:budget_tracker/injection.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../core/exceptions.dart';
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
    required String defaultCurrency,
  });

  void addDioAuthInterceptor(AccessTokenModel accessToken);

  /// Calls the API using the [accessToken] to get the user.
  ///
  /// Throws [ServerException] for all error codes.
  Future<UserModel> getUser();

  Future<List<UserModel>> getUsers();
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
    required String defaultCurrency,
  }) async {
    try {
      await client.post(
      "/auth/register",
      data: {
        'username': username,
        'password': password,
        'email': email,
        'firstName': firstName,
        'lastName': lastName,
        'defaultCurrency': defaultCurrency,
      }
    );
    return true;
    } on DioError catch (error) {
      final body = error.response?.data;
      if (body == null) {
        throw AuthServerException();
      }
      if (body['message'] == EMAIL_ALREADY_USED_MESSAGE) {
        throw EmailAlreadyUsedException();
      }
      if (body['message'] == USERNAME_ALREADY_USED_MESSAGE) {
        throw UsernameAlreadyUsedException();
      }
      throw AuthServerException();
    } catch (_) {
      throw AuthServerException();
    }
  }


  @override
  Future<List<UserModel>> getUsers() {
    try {
      final response = client.get(
        "/user/all",
      );
      return response.then((value) => value.data.map<UserModel>((e) => UserModel.fromJson(e)).toList());
    } on DioError catch (e) {
      if (e.response?.statusCode == 401) {
        throw InvalidCredentialsException();
      } else {
        throw AuthServerException();
      }
    }
  }

  @override
  Future<UserModel> getUser() async {
    try {
      final response = await client.get(
        "/user/details",
      );
      return UserModel.fromJson(response.data);
    } on DioError catch (e) {
      if (e.response?.statusCode == 401) {
        throw InvalidCredentialsException();
      } else {
        throw AuthServerException();
      }
    }
  }

  @override
  void addDioAuthInterceptor(AccessTokenModel token) {
    AuthBloc authBloc;
    authBloc = getIt<AuthBloc>();
    if (token.expiresAt!.isBefore(DateTime.now())) {
      authBloc.add(const AuthEvent.signedOut());
      throw UnauthorizedException();
    }
    client.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          // Add the access token to the request header
          options.headers['Authorization'] = 'Bearer ${token.token}';
          return handler.next(options);
        },
        onError: (error, handler) {
          if (error.response?.statusCode == 401 ||
              error.response?.statusCode == 403) {
            authBloc.add(const AuthEvent.signedOut());
          }
          return handler.next(error);
        },
      ),
    );
  }
}

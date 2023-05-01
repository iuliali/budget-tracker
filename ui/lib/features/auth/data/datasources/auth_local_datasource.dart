import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/domain/error/exceptions.dart';
import '../models/access_token_model.dart';

abstract class AuthLocalDataSource {
  /// Gets the cached [AccessTokenModel] which was gotten the last time
  /// the user had an internet connection.
  ///
  /// Throws a [CacheException] if no cached data is present.
  Future<AccessTokenModel> getLastAccessToken();

  /// Caches the [AccessTokenModel] which was gotten the last time
  /// the user had an internet connection.
  Future<bool> cacheAccessToken(AccessTokenModel accessTokenToCache);
}

const accessTokenCacheKey = "ACCESS_TOKEN";

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final SharedPreferences sharedPreferences;

  AuthLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<AccessTokenModel> getLastAccessToken() {
    final jsonString = sharedPreferences.getString(accessTokenCacheKey);
    if (jsonString == null || jsonString.isEmpty) {
      throw CacheException();
    }
    return Future.value(AccessTokenModel.fromJson(jsonDecode(jsonString)));
  }

  @override
  Future<bool> cacheAccessToken(AccessTokenModel accessTokenToCache) {
    return sharedPreferences.setString(
        accessTokenCacheKey, jsonEncode(accessTokenToCache.toJson()));
  }

}
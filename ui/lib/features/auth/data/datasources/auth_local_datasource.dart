import '../models/access_token_model.dart';

abstract class AuthLocalDataSource {
  /// Gets the cached [AccessTokenModel] which was gotten the last time
  /// the user had an internet connection.
  ///
  /// Throws a [CacheException] if no cached data is present.
  Future<AccessTokenModel> getLastAccessToken();

  /// Caches the [AccessTokenModel] which was gotten the last time
  /// the user had an internet connection.
  Future<void> cacheAccessToken(AccessTokenModel accessTokenToCache);
}
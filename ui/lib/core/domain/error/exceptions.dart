class ServerException implements Exception {}
class CacheException implements Exception {}

class ConflictException implements Exception {
  final String message;

  ConflictException({required this.message});
}

class InvalidInputException implements Exception {
  final String message;

  InvalidInputException({required this.message});
}
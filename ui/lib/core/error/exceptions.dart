class ServerException implements Exception {}
class CacheException implements Exception {}

class ConflictException implements Exception {
  final String message;

  ConflictException({required this.message});
}

class EmailAlreadyUsedException extends ConflictException {
  EmailAlreadyUsedException() : super(message: 'Email already exists');
}

class UsernameAlreadyUsedException extends ConflictException {
  UsernameAlreadyUsedException() : super(message: 'Username already exists');
}

class InvalidInputException implements Exception {
  final String message;

  InvalidInputException({required this.message});
}
import 'package:dartz/dartz.dart';

import '../../domain/error/failures.dart';

abstract class InputConverter {
  Either<Failure, int> stringToUnsignedInteger(String str);
}

class InputConverterImpl implements InputConverter {
  @override
  Either<Failure, int> stringToUnsignedInteger(String str) {
    try {
      final int value = int.parse(str);
      if (value < 0) throw const FormatException();
      return Right(value);
    } on FormatException {
      return Left(InvalidInputFailure());
    }
  }

}
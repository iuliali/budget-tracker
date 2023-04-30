import 'package:budget_tracker/features/auth/domain/repositories/auth_repository.dart';
import 'package:budget_tracker/features/auth/domain/usecases/register.dart';
import 'package:dartz/dartz.dart';
import "package:flutter_test/flutter_test.dart";
import "package:mocktail/mocktail.dart";

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late MockAuthRepository mockAuthRepository;
  late Register usecase;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    usecase = Register(mockAuthRepository);
  });

  test(
    "should get true from the repository",
    () async {
      // arrange
      const firstName = "John";
      const lastName = "Doe";
      const email = "johndoe@example.com";
      const username = "johndoe";
      const password = "password12";
      when(() => mockAuthRepository.register(
            firstName: firstName,
            lastName: lastName,
            email: email,
            username: username,
            password: password,
          )).thenAnswer((_) async => const Right(true));
      // act
      final result = await usecase(RegisterParams(
        firstName: firstName,
        lastName: lastName,
        email: email,
        username: username,
        password: password,
      ));
      // assert
      expect(result, const Right(true));
      verify(() => mockAuthRepository.register(
            firstName: firstName,
            lastName: lastName,
            email: email,
            username: username,
            password: password,
          ));
      verifyNoMoreInteractions(mockAuthRepository);
    },
  );
}

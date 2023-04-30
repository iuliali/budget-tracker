import 'package:budget_tracker/features/auth/domain/entities/access_token.dart';
import 'package:budget_tracker/features/auth/domain/repositories/auth_repository.dart';
import 'package:budget_tracker/features/auth/domain/usecases/login.dart';
import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';
import "package:flutter_test/flutter_test.dart";

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late Login usecase;
  late MockAuthRepository mockAuthRepository;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    usecase = Login(mockAuthRepository);
  });

  test(
    "should get an access token from the repository",
    () async {
      // arrange
      const username = "johndoe";
      const password = "password12";
      final accessToken = AccessToken(
        token: "access_token",
        expiresAt: DateTime.now().add(const Duration(days: 1)),
      );
      when(() => mockAuthRepository.login(
            username: username,
            password: password,
          )).thenAnswer((_) async => Right(accessToken));
      // act
      final result =
          await usecase(LoginParams(username: username, password: password));
      // assert
      expect(result, Right(accessToken));
      verify(() => mockAuthRepository.login(
            username: username,
            password: password,
          ));
      verifyNoMoreInteractions(mockAuthRepository);
    },
  );
}

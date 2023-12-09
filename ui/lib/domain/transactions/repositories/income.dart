import 'package:dartz/dartz.dart';

import '../entities/income.dart';
import '../failures.dart';
import '../value_objects.dart';

abstract class IIncomeRepository {
  Future<Either<IncomeFailure, Unit>> create(Income income);
  Future<Either<IncomeFailure, Unit>> update(Income income);
  Future<Either<IncomeFailure, Unit>> delete(IncomeId incomeId);
  Future<Either<IncomeFailure, List<Income>>> getAll();
}
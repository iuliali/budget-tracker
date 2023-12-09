import 'package:budget_tracker/domain/transactions/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/transactions/entities/income.dart';
import '../../../domain/transactions/repositories/income.dart';
import '../../../domain/transactions/value_objects.dart';
import '../datasources/income_remote_datasource.dart';

@LazySingleton(as: IIncomeRepository)
class IncomeRepositoryImpl implements IIncomeRepository {
  final IncomeRemoteDatasource remoteDatasource;

  IncomeRepositoryImpl({
    required this.remoteDatasource,
  });

  @override
  Future<Either<IncomeFailure, Unit>> create(Income income) async {
    try {
      await remoteDatasource.create(income);
      return right(unit);
    } catch (_) {
      return left(const IncomeFailure.serverError());
    }
  }

  @override
  Future<Either<IncomeFailure, Unit>> delete(IncomeId incomeId) async {
    try {
      await remoteDatasource.delete(incomeId);
      return right(unit);
    } catch (_) {
      return left(const IncomeFailure.serverError());
    }
  }

  @override
  Future<Either<IncomeFailure, List<Income>>> getAll() async {
    try {
      final incomes = await remoteDatasource.getAll();
      return right(incomes.map((e) => e.toDomain()).toList());
    } catch (_) {
      return left(const IncomeFailure.serverError());
    }
  }

  @override
  Future<Either<IncomeFailure, Unit>> update(Income income) async {
    try {
      await remoteDatasource.update(income);
      return right(unit);
    } catch (_) {
      return left(const IncomeFailure.serverError());
    }
  }
}

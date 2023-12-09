import 'package:budget_tracker/domain/transactions/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/transactions/entities/expense.dart';
import '../../../domain/transactions/repositories/expense.dart';
import '../../../domain/transactions/value_objects.dart';
import '../datasources/expense_remote_datasource.dart';

@LazySingleton(as: IExpenseRepository)
class ExpenseRepositoryImpl implements IExpenseRepository {
  final ExpenseRemoteDatasource remoteDatasource;

  ExpenseRepositoryImpl({
    required this.remoteDatasource,
  });

  @override
  Future<Either<ExpenseFailure, Unit>> create(Expense expense) async {
    try {
      await remoteDatasource.create(expense);
      return right(unit);
    } catch (_) {
      return left(const ExpenseFailure.serverError());
    }
  }

  @override
  Future<Either<ExpenseFailure, Unit>> delete(ExpenseId expenseId) async {
    try {
      await remoteDatasource.delete(expenseId);
      return right(unit);
    } catch (_) {
      return left(const ExpenseFailure.serverError());
    }
  }

  @override
  Future<Either<ExpenseFailure, List<Expense>>> getAll() async {
    try {
      final expenses = await remoteDatasource.getAll();
      return right(expenses.map((e) => e.toDomain()).toList());
    } catch (_) {
      return left(const ExpenseFailure.serverError());
    }
  }

  @override
  Future<Either<ExpenseFailure, Unit>> update(Expense expense) async {
    try {
      await remoteDatasource.update(expense);
      return right(unit);
    } catch (_) {
      return left(const ExpenseFailure.serverError());
    }
  }
}

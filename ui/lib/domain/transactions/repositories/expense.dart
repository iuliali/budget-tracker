import 'package:dartz/dartz.dart';

import '../entities/expense.dart';
import '../failures.dart';
import '../value_objects.dart';

abstract class IExpenseRepository {
  Future<Either<ExpenseFailure, Unit>> create(Expense expense);
  Future<Either<ExpenseFailure, Unit>> update(Expense expense);
  Future<Either<ExpenseFailure, Unit>> delete(ExpenseId expenseId);
  Future<Either<ExpenseFailure, List<Expense>>> getAll();
}
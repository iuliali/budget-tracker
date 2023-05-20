import 'package:budget_tracker/domain/budget/value_objects.dart';
import 'package:dartz/dartz.dart';

import '../categories/value_objects.dart';
import 'entities/budget.dart';
import 'failures.dart';

abstract class IBudgetFacade {
  Future<Either<BudgetFailures, Unit>> createBudget({
    required CategoryId categoryId,
    required BudgetAmount amount,
  });

  Future<Either<BudgetFailures, Unit>> updateBudget({
    required CategoryId categoryId,
    required BudgetAmount amount,
  });

  Future<Either<BudgetFailures, Unit>> deleteBudget({
    required CategoryId categoryId,
  });

  Future<Either<BudgetFailures, List<Budget>>> getBudgets();
}
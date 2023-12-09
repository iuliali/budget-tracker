import 'package:budget_tracker/domain/categories/entities/budget.dart';
import 'package:budget_tracker/domain/categories/entities/category.dart';
import 'package:budget_tracker/domain/categories/repository.dart';
import 'package:budget_tracker/domain/categories/failures.dart';
import 'package:budget_tracker/domain/categories/value_objects.dart';
import 'package:budget_tracker/infrastructure/categories/models/budget_model.dart';
import 'package:budget_tracker/infrastructure/categories/exceptions.dart';
import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../application/core/network_info.dart';
import 'datasources/budget_remote_datasource.dart';
import 'datasources/category_remote_datasource.dart';

@Singleton(as: ICategoryRepository)
class CategoryRepository implements ICategoryRepository {
  final INetworkInfo networkInfo;
  final CategoryRemoteDataSource remoteDataSource;
  final BudgetRemoteDataSource budgetRemoteDataSource;

  CategoryRepository({
    required this.networkInfo,
    required this.remoteDataSource,
    required this.budgetRemoteDataSource,
  });

  @override
  Future<Either<CategoryFailure, Unit>> create({
    required CategoryName categoryName,
  }) async {
    try {
      await remoteDataSource.create(categoryName);
      return right(unit);
    } on CategoryAlreadyExistsException {
      return left(const CategoryFailure.categoryAlreadyExists());
    } catch (_) {
      return left(const CategoryFailure.serverError());
    }
  }

  @override
  Future<Either<CategoryFailure, Unit>> delete({
    required CategoryId categoryId,
  }) async {
    try {
      await remoteDataSource.delete(categoryId);
      return right(unit);
    } on CategoryNotFoundException {
      return left(const CategoryFailure.categoryNotFound());
    } catch (_) {
      return left(const CategoryFailure.serverError());
    }
  }

  @override
  Future<Either<CategoryFailure, List<Category>>> getAll() async {
    try {
      final categoryModels = await remoteDataSource.getAll();
      final categories = categoryModels.map((e) => e.toDomain()).toList();

      final budgetModels = await Future.wait(
          categories.map((e) => budgetRemoteDataSource
              .getByCategoryId(e.id)
              .catchError(
                  (a) => BudgetModel(categoryId: 0, amount: 0.0))
          ));
      final budgets = budgetModels.map((e) => e.toDomain()).toList();

      for (var element in categories) {
        element.budget = budgets.firstWhereOrNull(
                (budget) => budget.categoryId == element.id);
      }
      return right(categories);
    } catch (_) {
      return left(const CategoryFailure.serverError());
    }
  }

  @override
  Future<Either<CategoryFailure, Unit>> update({
    required Category category,
    Budget? budget
  }) async {
    try {
      await remoteDataSource.update(category);
      if (budget != null) {
        category.budget != null
            ? await budgetRemoteDataSource.update(budget)
            : await budgetRemoteDataSource.create(budget);
      }
      return right(unit);
    } on CategoryNotFoundException {
      return left(const CategoryFailure.categoryNotFound());
    } catch (_) {
      return left(const CategoryFailure.serverError());
    }
  }

  @override
  Future<Either<CategoryFailure, Category>> get({required CategoryId categoryId}) async {
    try {
      final categoryModel = await remoteDataSource.getAll().then(
              (value) => value.firstWhere((element) => element.id == categoryId.getOrCrash()));
      final category = categoryModel.toDomain();

      final budgetModel = await budgetRemoteDataSource.getByCategoryId(category.id);
      final budget = budgetModel.toDomain();

      category.budget = budget;

      return right(category);
    } on CategoryNotFoundException {
      return left(const CategoryFailure.categoryNotFound());
    } catch (_) {
      return left(const CategoryFailure.serverError());
    }
  }

}

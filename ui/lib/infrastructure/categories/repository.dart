import 'package:budget_tracker/domain/categories/entities/category.dart';
import 'package:budget_tracker/domain/categories/repository.dart';
import 'package:budget_tracker/domain/categories/failures.dart';
import 'package:budget_tracker/domain/categories/value_objects.dart';
import 'package:budget_tracker/infrastructure/categories/exceptions.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../application/core/network_info.dart';
import 'datasources/category_remote_datasource.dart';

@Singleton(as: ICategoryRepository)
class CategoryRepository implements ICategoryRepository {
  final INetworkInfo networkInfo;
  final CategoryRemoteDataSource remoteDataSource;

  CategoryRepository({
    required this.networkInfo,
    required this.remoteDataSource,
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
      final categories = await remoteDataSource.getAll();
      return right(categories.map((e) => e.toDomain()).toList());
    } catch (_) {
      return left(const CategoryFailure.serverError());
    }
  }

  @override
  Future<Either<CategoryFailure, Unit>> update({
    required Category category,
  }) async {
    try {
      await remoteDataSource.update(category);
      return right(unit);
    } on CategoryNotFoundException {
      return left(const CategoryFailure.categoryNotFound());
    } catch (_) {
      return left(const CategoryFailure.serverError());
    }
  }
}

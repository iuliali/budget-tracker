import 'package:budget_tracker/domain/categories/entities/category.dart';
import 'package:budget_tracker/domain/categories/facade.dart';
import 'package:budget_tracker/domain/categories/failures.dart';
import 'package:budget_tracker/domain/categories/value_objects.dart';
import 'package:budget_tracker/infrastructure/categories/exceptions.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../application/core/network_info.dart';
import 'datasources/category_remote_datasource.dart';

@Singleton(as: ICategoryFacade)
class CategoryFacade implements ICategoryFacade {
  final INetworkInfo networkInfo;
  final CategoryRemoteDataSource remoteDataSource;

  CategoryFacade({
    required this.networkInfo,
    required this.remoteDataSource,
  });

  @override
  Future<Either<CategoryFailure, Unit>> createCategory({
    required CategoryName categoryName,
  }) async {
    try {
      await remoteDataSource.createCategory(categoryName);
      return right(unit);
    } on CategoryAlreadyExistsException {
      return left(const CategoryFailure.categoryAlreadyExists());
    } on CategoryServerException {
      return left(const CategoryFailure.serverError());
    }
  }

  @override
  Future<Either<CategoryFailure, Unit>> deleteCategory({
    required CategoryId categoryId,
  }) async {
    try {
      await remoteDataSource.deleteCategory(categoryId);
      return right(unit);
    } on CategoryNotFoundException {
      return left(const CategoryFailure.categoryNotFound());
    } on CategoryServerException {
      return left(const CategoryFailure.serverError());
    }
  }

  @override
  Future<Either<CategoryFailure, List<Category>>> getCategories() async {
    try {
      final categories = await remoteDataSource.getCategories();
      return right(categories.map((e) => e.toDomain()).toList());
    } on CategoryServerException {
      return left(const CategoryFailure.serverError());
    }
  }

  @override
  Future<Either<CategoryFailure, Unit>> updateCategory({
    required Category category,
  }) async {
    try {
      await remoteDataSource.updateCategory(category);
      return right(unit);
    } on CategoryNotFoundException {
      return left(const CategoryFailure.categoryNotFound());
    } on CategoryServerException {
      return left(const CategoryFailure.serverError());
    }
  }
}

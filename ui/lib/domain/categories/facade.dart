import 'package:budget_tracker/domain/categories/value_objects.dart';
import 'package:dartz/dartz.dart';

import 'entities/category.dart';
import 'failures.dart';

abstract class ICategoryFacade {
  Future<Either<CategoryFailure, Unit>> createCategory({
    required CategoryName categoryName,
  });

  Future<Either<CategoryFailure, Unit>> updateCategory({
    required Category category,
  });

  Future<Either<CategoryFailure, Unit>> deleteCategory({
    required CategoryId categoryId,
  });

  Future<Either<CategoryFailure, List<Category>>> getCategories();
}
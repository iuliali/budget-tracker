import 'package:budget_tracker/domain/categories/value_objects.dart';
import 'package:dartz/dartz.dart';

import 'entities/category.dart';
import 'failures.dart';

abstract class ICategoryRepository {
  Future<Either<CategoryFailure, Unit>> create({
    required CategoryName categoryName,
  });

  Future<Either<CategoryFailure, Unit>> update({
    required Category category,
  });

  Future<Either<CategoryFailure, Unit>> delete({
    required CategoryId categoryId,
  });

  Future<Either<CategoryFailure, List<Category>>> getAll();
}
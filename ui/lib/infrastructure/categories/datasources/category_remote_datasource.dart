import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/categories/entities/category.dart';
import '../../../domain/categories/value_objects.dart';
import '../exceptions.dart';
import '../models/category_model.dart';

abstract class CategoryRemoteDataSource{
  /// Throws [CategoryServerException] for all error codes.
  Future<List<CategoryModel>> getCategories();
  /// Throws [CategoryAlreadyExistsException] if category with provided name already exists,
  /// Throws [CategoryServerException] for other error codes.
  Future<void> createCategory(CategoryName categoryName);
  /// Throws [CategoryServerException] for all error codes.
  Future<void> updateCategory(Category category);
  /// Throws [CategoryServerException] for all error codes.
  Future<void> deleteCategory(CategoryId categoryId);
}

@LazySingleton(as: CategoryRemoteDataSource)
class CategoryRemoteDataSourceImpl implements CategoryRemoteDataSource{
  final Dio client;

  CategoryRemoteDataSourceImpl(this.client);

  @override
  Future<void> createCategory(CategoryName categoryName) async {
    final response = await client.post(
      "/categories",
      data: {"name": categoryName.getOrCrash()},
    );
    if(response.statusCode == 201){
      return;
    } else if(response.statusCode == 400){
      throw CategoryAlreadyExistsException();
    } else {
      throw CategoryServerException();
    }
  }

  @override
  Future<void> deleteCategory(CategoryId categoryId) async {
    final response = await client.delete(
        "/categories/${categoryId.getOrCrash()}"
    );
    if(response.statusCode == 200){
      return;
    } else if (response.statusCode == 400) {
      throw CategoryNotFoundException();
    } else {
      throw CategoryServerException();
    }
  }

  @override
  Future<List<CategoryModel>> getCategories() async {
    final response = await client.get<List<CategoryModel>>("/categories/all");
    print("getCategories");
    print(response.statusCode);
    if(response.statusCode == 200){
      final List<CategoryModel> categories = response.data ?? [];
      return categories;
    } else {
      throw CategoryServerException();
    }
  }

  @override
  Future<void> updateCategory(Category category) async {
    final response = await client.put(
      "/categories/${category.id.getOrCrash()}",
      data: {"name": category.name.getOrCrash()},
    );
    if(response.statusCode == 200){
      return;
    } else if(response.statusCode == 400){
      throw CategoryAlreadyExistsException();
    } else {
      throw CategoryServerException();
    }
  }
}

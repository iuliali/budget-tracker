import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/categories/entities/category.dart';
import '../../../domain/categories/value_objects.dart';
import '../exceptions.dart';
import '../models/category_model.dart';

abstract class CategoryRemoteDataSource{
  /// Throws [CategoryServerException] for all error codes.
  Future<List<CategoryModel>> getAll();
  /// Throws [CategoryAlreadyExistsException] if category with provided name already exists,
  /// Throws [CategoryServerException] for other error codes.
  Future<void> create(CategoryName categoryName);
  /// Throws [CategoryServerException] for all error codes.
  Future<void> update(Category category);
  /// Throws [CategoryServerException] for all error codes.
  Future<void> delete(CategoryId categoryId);
}

@LazySingleton(as: CategoryRemoteDataSource)
class CategoryRemoteDataSourceImpl implements CategoryRemoteDataSource{
  final Dio client;

  CategoryRemoteDataSourceImpl(this.client);

  @override
  Future<void> create(CategoryName categoryName) async {
    final response = await client.post(
      "/categories/create",
      data: {"name": categoryName.getOrCrash()},
    );
    if(response.statusCode == 200){
      return;
    } else if(response.statusCode == 400){
      throw CategoryAlreadyExistsException();
    } else {
      throw CategoryServerException();
    }
  }

  @override
  Future<void> delete(CategoryId categoryId) async {
    final response = await client.delete(
        "/categories/delete/${categoryId.getOrCrash()}"
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
  Future<List<CategoryModel>> getAll() async {
    final response = await client.get("/categories/all");
    if(response.statusCode == 200){
      final List<CategoryModel> categories = response.data["categories"]
          .map<CategoryModel>((category) => CategoryModel.fromJson(category))
          .toList();
      return categories;
    } else {
      throw CategoryServerException();
    }
  }

  @override
  Future<void> update(Category category) async {
    final response = await client.put(
      "/categories/update/${category.id.getOrCrash()}",
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

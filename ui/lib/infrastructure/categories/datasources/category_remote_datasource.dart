import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

import '../../../config.dart';
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
  final http.Client client;

  CategoryRemoteDataSourceImpl({required this.client});

  @override
  Future<void> createCategory(CategoryName categoryName) async {
    final response = await client.post(
      Uri.parse('${API_URL}/categories'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({"name": categoryName.getOrCrash()}),
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
      Uri.parse('${API_URL}/categories/${categoryId.getOrCrash()}'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
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
    final response = await client.get(
      Uri.parse('${API_URL}/categories/all'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    print("getCategories");
    print(response.statusCode);
    if(response.statusCode == 200){
      final List<dynamic> categories = jsonDecode(response.body);
      return categories.map((category) => CategoryModel.fromJson(category)).toList();
    } else {
      throw CategoryServerException();
    }
  }

  @override
  Future<void> updateCategory(Category category) async {
    final response = await client.put(
      Uri.parse('/${API_URL}/categories/${category.id.getOrCrash()}'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({"name": category.name.getOrCrash()}),
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

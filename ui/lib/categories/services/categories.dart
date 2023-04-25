import 'dart:convert';

import 'package:budget_tracker/config.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../auth/entities/credentials.dart';
import '../../auth/services/auth.dart';
import '../models/category.dart';
import 'package:http/http.dart' as http;

var categories = [
  const Category(
    id: 4,
    name: 'Groceries',
  ),
  const Category(
    id: 4,
    name: 'Clothes',
  ),
  const Category(
    id: 4,
    name: 'Salary',
  ),
  const Category(
    id: 4,
    name: 'Gifts',
  ),
  const Category(
    id: 5,
    name: 'Other',
  ),
];

Future<List<Category>> getCategories() async {
  final url = Uri.parse("$API_URL/categories/all");
  final cred = await getAccessToken();

  final headers = <String, String>{
    "Access-Control-Allow-Origin": "*",
    'Content-Type': 'application/json',
    'Authorization': 'Bearer ${cred.accessToken}'
  };

  final response = await http.get(url, headers: headers);
  if (response.statusCode == 200) {
    final categories = <Category>[];
    final json = jsonDecode(response.body);
    if (json == null) {
      return categories;
    }
    if (json['categories'] == null) {
      return categories;
    }
    for (var category in json['categories']) {
      categories.add(Category.fromJson(category));
    }
    return categories;
  } else {
    throw Exception('Failed to load categories');
  }
}

Future<Category> getCategory(int id) {
  return Future.delayed(const Duration(milliseconds: 500), () {
    return categories.firstWhere((category) => category.id == id);
  });
}

Future<void> addCategory(Category category) async {
  final url = Uri.parse("$API_URL/categories/create");
  final cred = await getAccessToken();
  final headers = <String, String>{
    "Access-Control-Allow-Origin": "*",
    "Authorization": "Bearer ${cred.accessToken}",
    'Content-Type': 'application/json',
  };
  final response = await http.post(
    url,
    headers: headers,
    body: jsonEncode(category.toJson()),
  );

  if (response.statusCode != 200) {
    throw Exception('Failed to add category');
  }
}

Future<void> deleteCategory(int id) async {
  final url = Uri.parse("$API_URL/categories/delete/$id");
  final cred = await getAccessToken();

  final headers = <String, String>{
    "Access-Control-Allow-Origin": "*",
    "Content-Type": "application/json",
    "Authorization": "Bearer ${cred.accessToken}",
  };
  final response = await http.delete(url, headers: headers);
  if (response.statusCode != 200) {
    throw Exception('Failed to delete category');
  }
}

Future<void> updateCategory(Category category) {
  return Future.delayed(const Duration(milliseconds: 500), () {
    final index = categories.indexWhere((element) => element.id == category.id);
    categories[index] = category;
  });
}

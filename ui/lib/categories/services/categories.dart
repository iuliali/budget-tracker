import 'dart:convert';

import 'package:budget_tracker/config.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../auth/entities/credentials.dart';
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
  final prefs = await SharedPreferences.getInstance();
  final credString = prefs.getString('credentials') ?? '';
  final cred = Credentials.fromJson(jsonDecode(credString));

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

Future<Category> getCategory(String id) {
  return Future.delayed(const Duration(milliseconds: 500), () {
    return categories.firstWhere((category) => category.id == id);
  });
}

Future<void> addCategory(Category category) {
  return Future.delayed(const Duration(milliseconds: 500), () {
    categories.add(category);
  });
}

Future<void> deleteCategory(String id) {
  return Future.delayed(const Duration(milliseconds: 500), () {
    categories.removeWhere((category) => category.id == id);
  });
}

Future<void> updateCategory(Category category) {
  return Future.delayed(const Duration(milliseconds: 500), () {
    final index = categories.indexWhere((element) => element.id == category.id);
    categories[index] = category;
  });
}
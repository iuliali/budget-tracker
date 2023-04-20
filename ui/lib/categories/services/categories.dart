import '../models/category.dart';

var categories = [
  const Category(
    id: "c1",
    name: 'Groceries',
  ),
  const Category(
    id: "c2",
    name: 'Clothes',
  ),
  const Category(
    id: "c3",
    name: 'Salary',
  ),
  const Category(
    id: "c4",
    name: 'Gifts',
  ),
  const Category(
    id: "c5",
    name: 'Other',
  ),
];

Future<List<Category>> getCategories() {
  return Future.delayed(const Duration(milliseconds: 500), () => categories);
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
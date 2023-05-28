import '../../../domain/categories/entities/category.dart';
import '../../../domain/categories/value_objects.dart';

class CategoryModel {
  final int id;
  final String name;

  CategoryModel({
    required this.id,
    required this.name,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }

  Category toDomain() {
    return Category(
      id: CategoryId(id),
      name: CategoryName(name),
    );
  }
}
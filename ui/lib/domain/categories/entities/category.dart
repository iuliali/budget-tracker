import '../value_objects.dart';

class Category {
  final CategoryId id;
  CategoryName name;

  Category({
    required this.id,
    required this.name,
  });

  void setName(CategoryName name) {
    this.name = name;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Category &&
        other.id == id;
  }

  @override
  int get hashCode => id.hashCode;

}
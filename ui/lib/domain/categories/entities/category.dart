import 'budget.dart';
import '../value_objects.dart';

class Category {
  final CategoryId id;
  CategoryName name;
  Budget? budget;

  Category({
    required this.id,
    required this.name,
    this.budget,
  });

  set setBudget(Budget budget) {
    this.budget = budget;
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
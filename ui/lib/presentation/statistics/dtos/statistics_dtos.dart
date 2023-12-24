
import '../../../domain/categories/value_objects.dart';

class CategorySpentAmount {
  final CategoryName categoryName;
  final BudgetAmount? budgetAmount;
  final double amount;

  const CategorySpentAmount({
    required this.categoryName,
    required this.budgetAmount,
    required this.amount,
  });

  bool get isOverspent =>
      budgetAmount != null && budgetAmount!.getOrCrash() < amount;
  bool get isLeft =>
      budgetAmount != null && budgetAmount!.getOrCrash() > amount;
  bool get isAllInclusive => budgetAmount == null;

  double get percentage =>
      budgetAmount != null ? (amount / budgetAmount!.getOrCrash()) : 1;
  double get overspentAmount =>
      budgetAmount != null ? (amount - budgetAmount!.getOrCrash()) : 0;
  double get leftAmount =>
      budgetAmount != null ? (budgetAmount!.getOrCrash() - amount) : 0;
}

class WeeklySpentAmount {
  final DateTime from_date;
  final DateTime to_date;
  final double amount;

  const WeeklySpentAmount({
    required this.from_date,
    required this.to_date,
    required this.amount,
  });
}


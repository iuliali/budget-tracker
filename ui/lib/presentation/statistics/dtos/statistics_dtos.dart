
import '../../../domain/categories/value_objects.dart';

class CategoryStat {
  final CategoryName categoryName;
  final BudgetAmount? budgetAmount;
  final double amount;

  const CategoryStat({
    required this.categoryName,
    required this.budgetAmount,
    required this.amount,
  });

  bool get isOverspent =>
      budgetAmount != null && budgetAmount!.getOrCrash() < amount;
  bool get isLeft =>
      budgetAmount != null && budgetAmount!.getOrCrash() >= amount;
  bool get isAllInclusive => budgetAmount == null;

  double get percentage =>
      budgetAmount != null ? (amount / budgetAmount!.getOrCrash()) : 1;
  double get overspentAmount =>
      budgetAmount != null ? (amount - budgetAmount!.getOrCrash()) : 0;
  double get leftAmount =>
      budgetAmount != null ? (budgetAmount!.getOrCrash() - amount) : 0;
}

class WeeklyStat {
  final String from_date;
  final String to_date;
  final double amount;

  const WeeklyStat({
    required this.from_date,
    required this.to_date,
    required this.amount,
  });
}


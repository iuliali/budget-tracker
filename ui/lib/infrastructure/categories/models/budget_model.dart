import '../../../domain/categories/entities/budget.dart';
import '../../../domain/categories/value_objects.dart';

class BudgetModel {
  final int categoryId;
  final double amount;

  BudgetModel({
    required this.categoryId,
    required this.amount,
  });

  factory BudgetModel.fromJson(Map<String, dynamic> json) {
    return BudgetModel(
      categoryId: json['userCategoryId'],
      amount: json['amount'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userCategoryId': categoryId,
      'amount': amount
    };
  }

  Budget toDomain() {
    return Budget(
      categoryId: CategoryId(categoryId),
      amount: BudgetAmount(amount),
    );
  }

  factory BudgetModel.fromDomain(Budget budget) {
    return BudgetModel(
      categoryId: budget.categoryId.getOrCrash(),
      amount: budget.amount.getOrCrash(),
    );
  }
}
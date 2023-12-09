import 'package:budget_tracker/domain/transactions/entities/income.dart';
import 'package:budget_tracker/domain/transactions/value_objects.dart';

import '../../../domain/categories/value_objects.dart';

class IncomeModel {
  final int id;
  final int categoryId;
  final String sender;
  final double amount;
  final String currency;
  final DateTime date;

  IncomeModel({
    required this.id,
    required this.categoryId,
    required this.sender,
    required this.amount,
    required this.currency,
    required this.date,
  });

  factory IncomeModel.fromJson(Map<String, dynamic> json) {
    return IncomeModel(
      id: json['id'],
      categoryId: json['userCategoryId'],
      sender: json['from'],
      amount: json['amount'],
      currency: json['currency'],
      date: DateTime.parse(json['registeredAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      "userCategoryId": categoryId,
      'from': sender,
      'amount': amount,
      'currency': currency,
      'registeredAt': date.toIso8601String(),
    };
  }

  Income toDomain() {
    return Income(
      id: IncomeId(id),
      categoryId: CategoryId(categoryId),
      sender: TransactionSender(sender),
      amount: TransactionAmount(amount),
      currency: TransactionCurrency(currency),
      date: TransactionDate(date),
    );
  }

  factory IncomeModel.fromDomain(Income income) {
    return IncomeModel(
      id: income.id.getOrElse(0),
      categoryId: income.categoryId.getOrCrash(),
      sender: income.sender.getOrCrash(),
      amount: income.amount.getOrCrash(),
      currency: income.currency.getOrCrash(),
      date: income.date.getOrElse(DateTime.now()),
    );
  }
}
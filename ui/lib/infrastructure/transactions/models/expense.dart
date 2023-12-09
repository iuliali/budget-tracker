import 'package:budget_tracker/domain/transactions/entities/expense.dart';
import 'package:budget_tracker/domain/transactions/value_objects.dart';

import '../../../domain/categories/value_objects.dart';

class ExpenseModel {
  final int id;
  final int categoryId;
  final String recipient;
  final double amount;
  final String currency;
  final DateTime date;

  ExpenseModel({
    required this.id,
    required this.categoryId,
    required this.recipient,
    required this.amount,
    required this.currency,
    required this.date,
  });

  factory ExpenseModel.fromJson(Map<String, dynamic> json) {
    return ExpenseModel(
      id: json['id'],
      categoryId: json['userCategoryId'],
      recipient: json['to'],
      amount: json['amount'],
      currency: json['currency'],
      date: DateTime.parse(json['registeredAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      "userCategoryId": categoryId,
      'to': recipient,
      'amount': amount,
      'currency': currency,
      'registeredAt': date.toIso8601String(),
    };
  }

  Expense toDomain() {
    return Expense(
      id: ExpenseId(id),
      categoryId: CategoryId(categoryId),
      recipient: TransactionRecipient(recipient),
      amount: TransactionAmount(amount),
      currency: TransactionCurrency(currency),
      date: TransactionDate(date),
    );
  }

  factory ExpenseModel.fromDomain(Expense expense) {
    return ExpenseModel(
      id: expense.id.getOrElse(0),
      categoryId: expense.categoryId.getOrCrash(),
      recipient: expense.recipient.getOrCrash(),
      amount: expense.amount.getOrCrash(),
      currency: expense.currency.getOrCrash(),
      date: expense.date.getOrElse(DateTime.now()),
    );
  }
}
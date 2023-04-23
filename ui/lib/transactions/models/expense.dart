import 'package:budget_tracker/transactions/models/transaction.dart';

class Expense extends Transaction {
  Expense({
    required String id,
    required String title,
    required double amount,
    required DateTime date,
    required int categoryId,
  }) : super(
            id: id,
            title: title,
            amount: amount,
            date: date,
            categoryId: categoryId);
}

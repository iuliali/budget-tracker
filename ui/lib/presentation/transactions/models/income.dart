import '../models/transaction.dart';

class Income extends Transaction {
  Income({
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

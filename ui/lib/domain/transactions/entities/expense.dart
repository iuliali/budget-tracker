import '../value_objects.dart';

class Expense {
  final ExpenseId id;
  final TransactionRecipient recipient;
  final TransactionAmount amount;
  final TransactionCurrency currency;
  final TransactionDate date;

  Expense({
    required this.id,
    required this.recipient,
    required this.amount,
    required this.currency,
    required this.date,
  });
}
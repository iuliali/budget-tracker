import '../value_objects.dart';

class Income {
  final IncomeId id;
  final TransactionSender sender;
  final TransactionAmount amount;
  final TransactionCurrency currency;
  final TransactionDate date;

  Income({
    required this.id,
    required this.sender,
    required this.amount,
    required this.currency,
    required this.date,
  });
}
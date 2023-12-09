import '../../categories/value_objects.dart';
import '../value_objects.dart';

class Income {
  final IncomeId id;
  final CategoryId categoryId;
  final TransactionSender sender;
  final TransactionAmount amount;
  final TransactionCurrency currency;
  final TransactionDate date;

  Income({
    required this.id,
    required this.categoryId,
    required this.sender,
    required this.amount,
    required this.currency,
    required this.date,
  });
}
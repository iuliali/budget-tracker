
import '../value_objects.dart';
import 'member.dart';

class Debt {
  final Member debtor;
  final Member creditor;
  final DebtAmount balance;

  Debt({
    required this.debtor,
    required this.creditor,
    required this.balance,
  });

}

import '../value_objects.dart';
import 'member.dart';

class Debt {
  final Member debtor;
  final Member creditor;
  final DebtAmount debt;

  Debt({
    required this.debtor,
    required this.creditor,
    required this.debt,
  });

}
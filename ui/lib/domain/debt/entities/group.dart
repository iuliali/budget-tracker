import '../value_objects.dart';
import 'debt.dart';
import 'member.dart';

class Group {
  final GroupId id;
  final GroupName name;
  final DebtAmount balance;
  final List<Debt> debts;
  final List<Member> members;

  Group({
    required this.id,
    required this.name,
    required this.balance,
    required this.debts,
    required this.members,
  });
}
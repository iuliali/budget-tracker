import 'package:budget_tracker/domain/debt/value_objects.dart';

class Member {
  final MemberId id;
  final MemberName name;
  final MemberUsername username;

  Member({
    required this.id,
    required this.name,
    required this.username,
  });

}
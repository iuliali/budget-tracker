import 'package:budget_tracker/domain/debt/value_objects.dart';

import '../../auth/value_objects.dart';

class Member {
  final MemberId id;
  final UserId userId;
  final FirstName firstName;

  Member({
    required this.id,
    required this.userId,
    required this.firstName,
  });

}
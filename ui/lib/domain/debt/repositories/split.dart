import 'package:budget_tracker/domain/debt/failures.dart';
import 'package:dartz/dartz.dart';

import '../../transactions/value_objects.dart';
import '../value_objects.dart';

abstract class ISplitRepository {
  Future<Either<SplitFailure, Unit>> createSplit({
    required GroupId groupId,
    required TransactionAmount amount,
    required List<Map<MemberId, DebtAmount>> deptAmounts,
  });
}

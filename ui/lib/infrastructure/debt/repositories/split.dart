import 'package:budget_tracker/domain/debt/failures.dart';
import 'package:budget_tracker/domain/debt/repositories/split.dart';
import 'package:budget_tracker/domain/debt/value_objects.dart';
import 'package:budget_tracker/domain/transactions/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../datasources/debt_remote_datasource.dart';
import '../exceptions.dart';

@LazySingleton(as: ISplitRepository)
class SplitRepository implements ISplitRepository {
  final DebtRemoteDataSource _debtRemoteDataSource;

  SplitRepository(this._debtRemoteDataSource);

  @override
  Future<Either<SplitFailure, Unit>> createSplit({
    required GroupId groupId,
    required TransactionAmount amount,
    required List<Map<MemberId, DebtAmount>> deptAmounts,
  }) async {
    try {
      final debtSum = deptAmounts.fold(
          0.0, (previousValue, element) => previousValue + element.values.first.getOrCrash());
      if (debtSum != amount.getOrCrash()) {
        return left(const SplitFailure.debtSumNotEqualAmount());
      }
      await _debtRemoteDataSource.addGroupExpense(
        groupId,
        amount,
        deptAmounts.map((e) => e.keys.first).toList(),
        deptAmounts.map((e) => e.values.first).toList(),
      );
      return right(unit);
    } on DebtServerException {
      return left(const SplitFailure.serverError());
    } catch (_){
      return left(const SplitFailure.unexpected());
    }
  }
}

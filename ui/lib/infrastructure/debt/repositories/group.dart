import 'package:budget_tracker/domain/debt/repositories/group.dart';
import 'package:budget_tracker/domain/debt/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/debt/entities/group.dart';
import '../../../domain/debt/failures.dart';
import '../datasources/debt_remote_datasource.dart';
import '../exceptions.dart';

@LazySingleton(as: IGroupRepository)
class GroupRepository implements IGroupRepository {
  final DebtRemoteDataSource remoteDataSource;

  GroupRepository(this.remoteDataSource);

  @override
  Future<Either<GroupFailure, Unit>> createGroup(Group group) async {
    // TODO: implement createGroup
    return right(unit);
  }

  @override
  Future<Either<GroupFailure, Unit>> deleteGroup(GroupId groupId) async {
    // TODO: implement deleteGroup
    return right(unit);
  }

  @override
  Future<Either<GroupFailure, List<Group>>> getAll() async {
    try {
      final groupModels = await remoteDataSource.getGroups();
      final groups = groupModels.map((e) => e.toDomain()).toList();
      return right(groups);
    } on GroupServerException {
      return left(const GroupFailure.unexpected());
    } catch (_) {
      return left(const GroupFailure.unexpected());
    }
  }

  @override
  Future<Either<GroupFailure, Unit>> updateGroup(Group group) async {
    // TODO: implement updateGroup
    return right(unit);
  }
}

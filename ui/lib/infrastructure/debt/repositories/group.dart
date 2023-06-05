import 'package:budget_tracker/domain/debt/repositories/group.dart';
import 'package:budget_tracker/domain/debt/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/value_objects.dart';
import '../../../domain/debt/entities/group.dart';
import '../../../domain/debt/failures.dart';
import '../datasources/debt_remote_datasource.dart';
import '../exceptions.dart';

@LazySingleton(as: IGroupRepository)
class GroupRepository implements IGroupRepository {
  final DebtRemoteDataSource remoteDataSource;

  GroupRepository(this.remoteDataSource);

  @override
  Future<Either<GroupFailure, Unit>> createGroup({
    required GroupName name,
    required List<UserId> userIds,
  }) async {
    try {
      await remoteDataSource.createGroup(name, userIds);
      return right(unit);
    } on GroupServerException {
      return left(const GroupFailure.unexpected());
    } catch (_) {
      return left(const GroupFailure.unexpected());
    }
  }

  @override
  Future<Either<GroupFailure, Unit>> deleteGroup(GroupId groupId) async {
    try {
      await remoteDataSource.deleteGroup(groupId);
      return right(unit);
    } on GroupServerException {
      return left(const GroupFailure.unexpected());
    } catch (_) {
      return left(const GroupFailure.unexpected());
    }
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
  Future<Either<GroupFailure, Unit>> updateGroup({
    required Group group,
    required List<UserId> userIds,
  }) async {
    try {
      final userIds = group.members.map((e) => e.userId).toList();
      final newUserIds = userIds.where((element) => !userIds.contains(element)).toList();
      await remoteDataSource.addMembers(group.id, newUserIds);
      return right(unit);
    } on GroupServerException {
      return left(const GroupFailure.unexpected());
    } catch (_) {
      return left(const GroupFailure.unexpected());
    }
  }
}

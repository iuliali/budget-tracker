import 'package:budget_tracker/domain/debt/repositories/group.dart';
import 'package:budget_tracker/domain/debt/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/debt/entities/group.dart';
import '../../../domain/debt/failures.dart';

@LazySingleton(as: IGroupRepository)
class GroupRepository implements IGroupRepository {
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
    final groups = <Group>[];
    groups.add(Group(id: GroupId(1), name: GroupName('Group 1')));
    groups.add(Group(id: GroupId(2), name: GroupName('Group 2')));
    return right(groups);
  }

  @override
  Future<Either<GroupFailure, Unit>> updateGroup(Group group) async {
    // TODO: implement updateGroup
    return right(unit);
  }

}
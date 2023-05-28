import 'package:dartz/dartz.dart';

import '../entities/group.dart';
import '../failures.dart';
import '../value_objects.dart';

abstract class IGroupRepository {
  Future<Either<GroupFailure, List<Group>>> getAll();
  Future<Either<GroupFailure, Unit>> createGroup(Group group);
  Future<Either<GroupFailure, Unit>> updateGroup(Group group);
  Future<Either<GroupFailure, Unit>> deleteGroup(GroupId groupId);
}
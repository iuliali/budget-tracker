import 'package:dartz/dartz.dart';

import '../../auth/value_objects.dart';
import '../entities/group.dart';
import '../failures.dart';
import '../value_objects.dart';

abstract class IGroupRepository {
  Future<Either<GroupFailure, List<Group>>> getAll();
  Future<Either<GroupFailure, Unit>> createGroup({
    required GroupName name,
    required List<UserId> userIds,
  });
  Future<Either<GroupFailure, Unit>> updateGroup({
    required Group group,
    required List<UserId> userIds,
  });
  Future<Either<GroupFailure, Unit>> deleteGroup(GroupId groupId);
}

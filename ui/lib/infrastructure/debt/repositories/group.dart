import 'package:budget_tracker/domain/debt/repositories/group.dart';
import 'package:budget_tracker/domain/debt/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/debt/entities/group.dart';
import '../../../domain/debt/entities/member.dart';
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
    final member1 = Member(
      id: MemberId(1),
      name: MemberName('Member 1'),
      username: MemberUsername('member1'),
    );
    final member2 = Member(
      id: MemberId(2),
      name: MemberName('Member 2'),
      username: MemberUsername('member2'),
    );
    final member3 = Member(
      id: MemberId(3),
      name: MemberName('Member 3'),
      username: MemberUsername('member3'),
    );
    final listOfMembers1 = <Member>[];
    listOfMembers1.add(member1);
    listOfMembers1.add(member2);

    final listOfMembers2 = <Member>[];
    listOfMembers2.add(member1);
    listOfMembers2.add(member3);

    groups.add(Group(
      id: GroupId(1),
      name: GroupName('Group 1'),
      members: listOfMembers1,
    ));
    groups.add(Group(
      id: GroupId(2),
      name: GroupName('Group 2'),
      members: listOfMembers2,
    ));
    return right(groups);
  }

  @override
  Future<Either<GroupFailure, Unit>> updateGroup(Group group) async {
    // TODO: implement updateGroup
    return right(unit);
  }
}

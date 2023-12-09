part of 'groups_bloc.dart';

@freezed
abstract class GroupsEvent with _$GroupsEvent {
  const factory GroupsEvent.deleteGroup(GroupId groupId) = _DeleteGroup;
  const factory GroupsEvent.getGroups() = _GetGroups;
}

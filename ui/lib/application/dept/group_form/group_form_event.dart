part of 'group_form_bloc.dart';

@freezed
abstract class GroupFormEvent with _$GroupFormEvent {
  const factory GroupFormEvent.initialized(Option<Group> initialGroupOption) = _Initialized;
  const factory GroupFormEvent.groupNameChanged(String groupNameStr) = _GroupNameChanged;
  const factory GroupFormEvent.findUserByUsername(String usernameStr) = _FindUserByUsername;
  const factory GroupFormEvent.addMember(UserId userId) = _AddMember;
  const factory GroupFormEvent.removeMember(UserId userId) = _RemoveMember;
  const factory GroupFormEvent.saved() = _Saved;
}

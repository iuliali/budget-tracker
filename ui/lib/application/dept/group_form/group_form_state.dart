part of 'group_form_bloc.dart';

@freezed
abstract class GroupFormState with _$GroupFormState {
  const factory GroupFormState({
    required Option<Group> groupOption,
    required GroupName groupName,
    required Username findUserByUsername,
    required List<UserId> members,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSaving,
    required Option<Either<AuthFailure, List<User>>> usersFailureOrSuccessOption,
    required Option<Either<GroupFailure, Unit>> saveFailureOrSuccessOption,
  }) = _GroupFormState;

  factory GroupFormState.initial() => GroupFormState(
        groupOption: none(),
        groupName: GroupName(''),
        findUserByUsername: Username(''),
        members: [],
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        usersFailureOrSuccessOption: none(),
        saveFailureOrSuccessOption: none(),
      );
}

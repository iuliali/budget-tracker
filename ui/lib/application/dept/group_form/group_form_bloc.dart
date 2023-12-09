import 'package:bloc/bloc.dart';
import 'package:budget_tracker/domain/auth/failures.dart';
import 'package:budget_tracker/domain/auth/value_objects.dart';
import 'package:budget_tracker/domain/debt/repositories/group.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/entities/user.dart';
import '../../../domain/auth/facade.dart';
import '../../../domain/debt/entities/group.dart';
import '../../../domain/debt/failures.dart';
import '../../../domain/debt/value_objects.dart';

part 'group_form_event.dart';
part 'group_form_state.dart';
part 'group_form_bloc.freezed.dart';

@injectable
class GroupFormBloc extends Bloc<GroupFormEvent, GroupFormState> {
  final IGroupRepository groupRepository;
  final IAuthFacade authFacade;

  GroupFormBloc(this.groupRepository, this.authFacade)
      : super(GroupFormState.initial()) {
    on<_Initialized>(_onInitialized);
    on<_GroupNameChanged>(_onGroupNameChanged);
    on<_FindUserByUsername>(_onFindUserByUsername);
    on<_AddMember>(_onAddMember);
    on<_RemoveMember>(_onRemoveMember);
    on<_Saved>(_onSaved);
  }

  void _onInitialized(_Initialized event, Emitter<GroupFormState> emit) async {
    emit(state.copyWith(
      groupOption: event.initialGroupOption,
      groupName: GroupName(event.initialGroupOption.fold(
        () => '',
        (group) => group.name.getOrCrash(),
      )),
      members: event.initialGroupOption.fold(
          () => [], (group) => group.members.map((e) => e.userId).toList()),
      usersFailureOrSuccessOption: none(),
      isEditing: event.initialGroupOption.isSome(),
    ));
  }

  void _onGroupNameChanged(
      _GroupNameChanged event, Emitter<GroupFormState> emit) {
    emit(state.copyWith(
      groupName: GroupName(event.groupNameStr),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onAddMember(_AddMember event, Emitter<GroupFormState> emit) {
    emit(state.copyWith(
      members: [...state.members, event.userId],
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onRemoveMember(_RemoveMember event, Emitter<GroupFormState> emit) {
    emit(state.copyWith(
      members: state.members.where((userId) => userId != event.userId).toList(),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onFindUserByUsername(
      _FindUserByUsername event, Emitter<GroupFormState> emit) async {
    final findUsersByUsername = Username(event.usernameStr);
    if (!findUsersByUsername.isValid()) {
      emit(state.copyWith(
        findUserByUsername: findUsersByUsername,
      ));
      return;
    }

    final users = await authFacade.getUsers();
    final List<User> filteredUsers = users.fold(
      (f) => [],
      (users) => users
          .where((user) => (user.username
              .getOrElse(" ")
              .toLowerCase()
              .contains(event.usernameStr.toLowerCase())) || (state.members.contains(user.id)))
          .toList(),
    );
    emit(state.copyWith(
      findUserByUsername: findUsersByUsername,
      usersFailureOrSuccessOption: some(right(filteredUsers)),
    ));
  }

  void _onSaved(_Saved event, Emitter<GroupFormState> emit) async {
    Either<GroupFailure, Unit>? failureOrSuccess;

    emit(state.copyWith(
      isSaving: true,
      saveFailureOrSuccessOption: none(),
    ));

    if (state.groupOption.isNone()) {
      failureOrSuccess = await groupRepository.createGroup(
        name: state.groupName,
        userIds: state.members,
      );
    } else {
      failureOrSuccess = await state.groupOption.fold(
        () => null,
        (group) => groupRepository.updateGroup(
          group: group,
          userIds: state.members,
        ),
      );
    }

    emit(state.copyWith(
      isSaving: false,
      showErrorMessages: true,
      saveFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }
}

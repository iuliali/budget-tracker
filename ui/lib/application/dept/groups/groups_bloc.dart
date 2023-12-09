
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/debt/entities/group.dart';
import '../../../domain/debt/failures.dart';
import '../../../domain/debt/repositories/group.dart';
import '../../../domain/debt/value_objects.dart';

part 'groups_event.dart';
part 'groups_state.dart';
part 'groups_bloc.freezed.dart';

@injectable
class GroupsBloc extends Bloc<GroupsEvent, GroupsState> {
  final IGroupRepository _groupRepository;

  GroupsBloc(this._groupRepository) : super(GroupsState.initial()) {
    on<_DeleteGroup>(_onDeleteGroup);
    on<_GetGroups>(_onGetGroups);
  }

  Future<void> _onDeleteGroup(_DeleteGroup event, Emitter<GroupsState> emit) async {
    emit(GroupsState.loading());
    final failureOrSuccess = await _groupRepository.deleteGroup(event.groupId);
    emit(
      failureOrSuccess.fold(
        (failure) => GroupsState.error(failure),
        (_) => GroupsState.success(),
      ),
    );
  }

  Future<void> _onGetGroups(_GetGroups event, Emitter<GroupsState> emit) async {
    emit(GroupsState.loading());
    final failureOrGroups = await _groupRepository.getAll();
    emit(
      failureOrGroups.fold(
        (failure) => GroupsState.error(failure),
        (groups) => GroupsState.loaded(groups),
      ),
    );
  }


}

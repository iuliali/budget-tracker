part of 'groups_bloc.dart';

@freezed
abstract class GroupsState with _$GroupsState {
  const factory GroupsState({
    required Option<Either<GroupFailure, List<Group>>> failureOrGroups,
    required bool showErrorMessages,
    required bool isFetching,
    required bool isDeleting,
  }) = _GroupsListState;

  factory GroupsState.initial() => GroupsState(
        failureOrGroups: none(),
        showErrorMessages: false,
        isFetching: false,
        isDeleting: false,
      );

  factory GroupsState.loading() => GroupsState(
        failureOrGroups: none(),
        showErrorMessages: false,
        isFetching: true,
        isDeleting: false,
      );

  factory GroupsState.error(GroupFailure failure) => GroupsState(
        failureOrGroups: some(left(failure)),
        showErrorMessages: true,
        isFetching: false,
        isDeleting: false,
      );

  factory GroupsState.success() => GroupsState(
        failureOrGroups: none(),
        showErrorMessages: false,
        isFetching: false,
        isDeleting: false,
      );

  factory GroupsState.loaded(List<Group> groups) => GroupsState(
        failureOrGroups: some(right(groups)),
        showErrorMessages: false,
        isFetching: false,
        isDeleting: false,
      );

}

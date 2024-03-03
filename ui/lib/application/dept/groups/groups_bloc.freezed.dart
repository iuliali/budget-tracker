// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'groups_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GroupsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GroupId groupId) deleteGroup,
    required TResult Function() getGroups,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GroupId groupId)? deleteGroup,
    TResult? Function()? getGroups,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GroupId groupId)? deleteGroup,
    TResult Function()? getGroups,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteGroup value) deleteGroup,
    required TResult Function(_GetGroups value) getGroups,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteGroup value)? deleteGroup,
    TResult? Function(_GetGroups value)? getGroups,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteGroup value)? deleteGroup,
    TResult Function(_GetGroups value)? getGroups,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupsEventCopyWith<$Res> {
  factory $GroupsEventCopyWith(
          GroupsEvent value, $Res Function(GroupsEvent) then) =
      _$GroupsEventCopyWithImpl<$Res, GroupsEvent>;
}

/// @nodoc
class _$GroupsEventCopyWithImpl<$Res, $Val extends GroupsEvent>
    implements $GroupsEventCopyWith<$Res> {
  _$GroupsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DeleteGroupImplCopyWith<$Res> {
  factory _$$DeleteGroupImplCopyWith(
          _$DeleteGroupImpl value, $Res Function(_$DeleteGroupImpl) then) =
      __$$DeleteGroupImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GroupId groupId});
}

/// @nodoc
class __$$DeleteGroupImplCopyWithImpl<$Res>
    extends _$GroupsEventCopyWithImpl<$Res, _$DeleteGroupImpl>
    implements _$$DeleteGroupImplCopyWith<$Res> {
  __$$DeleteGroupImplCopyWithImpl(
      _$DeleteGroupImpl _value, $Res Function(_$DeleteGroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
  }) {
    return _then(_$DeleteGroupImpl(
      null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as GroupId,
    ));
  }
}

/// @nodoc

class _$DeleteGroupImpl implements _DeleteGroup {
  const _$DeleteGroupImpl(this.groupId);

  @override
  final GroupId groupId;

  @override
  String toString() {
    return 'GroupsEvent.deleteGroup(groupId: $groupId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteGroupImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteGroupImplCopyWith<_$DeleteGroupImpl> get copyWith =>
      __$$DeleteGroupImplCopyWithImpl<_$DeleteGroupImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GroupId groupId) deleteGroup,
    required TResult Function() getGroups,
  }) {
    return deleteGroup(groupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GroupId groupId)? deleteGroup,
    TResult? Function()? getGroups,
  }) {
    return deleteGroup?.call(groupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GroupId groupId)? deleteGroup,
    TResult Function()? getGroups,
    required TResult orElse(),
  }) {
    if (deleteGroup != null) {
      return deleteGroup(groupId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteGroup value) deleteGroup,
    required TResult Function(_GetGroups value) getGroups,
  }) {
    return deleteGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteGroup value)? deleteGroup,
    TResult? Function(_GetGroups value)? getGroups,
  }) {
    return deleteGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteGroup value)? deleteGroup,
    TResult Function(_GetGroups value)? getGroups,
    required TResult orElse(),
  }) {
    if (deleteGroup != null) {
      return deleteGroup(this);
    }
    return orElse();
  }
}

abstract class _DeleteGroup implements GroupsEvent {
  const factory _DeleteGroup(final GroupId groupId) = _$DeleteGroupImpl;

  GroupId get groupId;
  @JsonKey(ignore: true)
  _$$DeleteGroupImplCopyWith<_$DeleteGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetGroupsImplCopyWith<$Res> {
  factory _$$GetGroupsImplCopyWith(
          _$GetGroupsImpl value, $Res Function(_$GetGroupsImpl) then) =
      __$$GetGroupsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetGroupsImplCopyWithImpl<$Res>
    extends _$GroupsEventCopyWithImpl<$Res, _$GetGroupsImpl>
    implements _$$GetGroupsImplCopyWith<$Res> {
  __$$GetGroupsImplCopyWithImpl(
      _$GetGroupsImpl _value, $Res Function(_$GetGroupsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetGroupsImpl implements _GetGroups {
  const _$GetGroupsImpl();

  @override
  String toString() {
    return 'GroupsEvent.getGroups()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetGroupsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GroupId groupId) deleteGroup,
    required TResult Function() getGroups,
  }) {
    return getGroups();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GroupId groupId)? deleteGroup,
    TResult? Function()? getGroups,
  }) {
    return getGroups?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GroupId groupId)? deleteGroup,
    TResult Function()? getGroups,
    required TResult orElse(),
  }) {
    if (getGroups != null) {
      return getGroups();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteGroup value) deleteGroup,
    required TResult Function(_GetGroups value) getGroups,
  }) {
    return getGroups(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteGroup value)? deleteGroup,
    TResult? Function(_GetGroups value)? getGroups,
  }) {
    return getGroups?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteGroup value)? deleteGroup,
    TResult Function(_GetGroups value)? getGroups,
    required TResult orElse(),
  }) {
    if (getGroups != null) {
      return getGroups(this);
    }
    return orElse();
  }
}

abstract class _GetGroups implements GroupsEvent {
  const factory _GetGroups() = _$GetGroupsImpl;
}

/// @nodoc
mixin _$GroupsState {
  Option<Either<GroupFailure, List<Group>>> get failureOrGroups =>
      throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  bool get isDeleting => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupsStateCopyWith<GroupsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupsStateCopyWith<$Res> {
  factory $GroupsStateCopyWith(
          GroupsState value, $Res Function(GroupsState) then) =
      _$GroupsStateCopyWithImpl<$Res, GroupsState>;
  @useResult
  $Res call(
      {Option<Either<GroupFailure, List<Group>>> failureOrGroups,
      bool showErrorMessages,
      bool isFetching,
      bool isDeleting});
}

/// @nodoc
class _$GroupsStateCopyWithImpl<$Res, $Val extends GroupsState>
    implements $GroupsStateCopyWith<$Res> {
  _$GroupsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrGroups = null,
    Object? showErrorMessages = null,
    Object? isFetching = null,
    Object? isDeleting = null,
  }) {
    return _then(_value.copyWith(
      failureOrGroups: null == failureOrGroups
          ? _value.failureOrGroups
          : failureOrGroups // ignore: cast_nullable_to_non_nullable
              as Option<Either<GroupFailure, List<Group>>>,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleting: null == isDeleting
          ? _value.isDeleting
          : isDeleting // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupsListStateImplCopyWith<$Res>
    implements $GroupsStateCopyWith<$Res> {
  factory _$$GroupsListStateImplCopyWith(_$GroupsListStateImpl value,
          $Res Function(_$GroupsListStateImpl) then) =
      __$$GroupsListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Either<GroupFailure, List<Group>>> failureOrGroups,
      bool showErrorMessages,
      bool isFetching,
      bool isDeleting});
}

/// @nodoc
class __$$GroupsListStateImplCopyWithImpl<$Res>
    extends _$GroupsStateCopyWithImpl<$Res, _$GroupsListStateImpl>
    implements _$$GroupsListStateImplCopyWith<$Res> {
  __$$GroupsListStateImplCopyWithImpl(
      _$GroupsListStateImpl _value, $Res Function(_$GroupsListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrGroups = null,
    Object? showErrorMessages = null,
    Object? isFetching = null,
    Object? isDeleting = null,
  }) {
    return _then(_$GroupsListStateImpl(
      failureOrGroups: null == failureOrGroups
          ? _value.failureOrGroups
          : failureOrGroups // ignore: cast_nullable_to_non_nullable
              as Option<Either<GroupFailure, List<Group>>>,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleting: null == isDeleting
          ? _value.isDeleting
          : isDeleting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GroupsListStateImpl implements _GroupsListState {
  const _$GroupsListStateImpl(
      {required this.failureOrGroups,
      required this.showErrorMessages,
      required this.isFetching,
      required this.isDeleting});

  @override
  final Option<Either<GroupFailure, List<Group>>> failureOrGroups;
  @override
  final bool showErrorMessages;
  @override
  final bool isFetching;
  @override
  final bool isDeleting;

  @override
  String toString() {
    return 'GroupsState(failureOrGroups: $failureOrGroups, showErrorMessages: $showErrorMessages, isFetching: $isFetching, isDeleting: $isDeleting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupsListStateImpl &&
            (identical(other.failureOrGroups, failureOrGroups) ||
                other.failureOrGroups == failureOrGroups) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.isDeleting, isDeleting) ||
                other.isDeleting == isDeleting));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, failureOrGroups, showErrorMessages, isFetching, isDeleting);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupsListStateImplCopyWith<_$GroupsListStateImpl> get copyWith =>
      __$$GroupsListStateImplCopyWithImpl<_$GroupsListStateImpl>(
          this, _$identity);
}

abstract class _GroupsListState implements GroupsState {
  const factory _GroupsListState(
      {required final Option<Either<GroupFailure, List<Group>>> failureOrGroups,
      required final bool showErrorMessages,
      required final bool isFetching,
      required final bool isDeleting}) = _$GroupsListStateImpl;

  @override
  Option<Either<GroupFailure, List<Group>>> get failureOrGroups;
  @override
  bool get showErrorMessages;
  @override
  bool get isFetching;
  @override
  bool get isDeleting;
  @override
  @JsonKey(ignore: true)
  _$$GroupsListStateImplCopyWith<_$GroupsListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

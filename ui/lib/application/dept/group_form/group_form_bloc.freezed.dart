// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GroupFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Group> initialGroupOption) initialized,
    required TResult Function(String groupNameStr) groupNameChanged,
    required TResult Function(String usernameStr) findUserByUsername,
    required TResult Function(UserId userId) addMember,
    required TResult Function(UserId userId) removeMember,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Group> initialGroupOption)? initialized,
    TResult? Function(String groupNameStr)? groupNameChanged,
    TResult? Function(String usernameStr)? findUserByUsername,
    TResult? Function(UserId userId)? addMember,
    TResult? Function(UserId userId)? removeMember,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Group> initialGroupOption)? initialized,
    TResult Function(String groupNameStr)? groupNameChanged,
    TResult Function(String usernameStr)? findUserByUsername,
    TResult Function(UserId userId)? addMember,
    TResult Function(UserId userId)? removeMember,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_GroupNameChanged value) groupNameChanged,
    required TResult Function(_FindUserByUsername value) findUserByUsername,
    required TResult Function(_AddMember value) addMember,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_GroupNameChanged value)? groupNameChanged,
    TResult? Function(_FindUserByUsername value)? findUserByUsername,
    TResult? Function(_AddMember value)? addMember,
    TResult? Function(_RemoveMember value)? removeMember,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_GroupNameChanged value)? groupNameChanged,
    TResult Function(_FindUserByUsername value)? findUserByUsername,
    TResult Function(_AddMember value)? addMember,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupFormEventCopyWith<$Res> {
  factory $GroupFormEventCopyWith(
          GroupFormEvent value, $Res Function(GroupFormEvent) then) =
      _$GroupFormEventCopyWithImpl<$Res, GroupFormEvent>;
}

/// @nodoc
class _$GroupFormEventCopyWithImpl<$Res, $Val extends GroupFormEvent>
    implements $GroupFormEventCopyWith<$Res> {
  _$GroupFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitializedCopyWith<$Res> {
  factory _$$_InitializedCopyWith(
          _$_Initialized value, $Res Function(_$_Initialized) then) =
      __$$_InitializedCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<Group> initialGroupOption});
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$GroupFormEventCopyWithImpl<$Res, _$_Initialized>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialGroupOption = null,
  }) {
    return _then(_$_Initialized(
      null == initialGroupOption
          ? _value.initialGroupOption
          : initialGroupOption // ignore: cast_nullable_to_non_nullable
              as Option<Group>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialGroupOption);

  @override
  final Option<Group> initialGroupOption;

  @override
  String toString() {
    return 'GroupFormEvent.initialized(initialGroupOption: $initialGroupOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
            (identical(other.initialGroupOption, initialGroupOption) ||
                other.initialGroupOption == initialGroupOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialGroupOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Group> initialGroupOption) initialized,
    required TResult Function(String groupNameStr) groupNameChanged,
    required TResult Function(String usernameStr) findUserByUsername,
    required TResult Function(UserId userId) addMember,
    required TResult Function(UserId userId) removeMember,
    required TResult Function() saved,
  }) {
    return initialized(initialGroupOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Group> initialGroupOption)? initialized,
    TResult? Function(String groupNameStr)? groupNameChanged,
    TResult? Function(String usernameStr)? findUserByUsername,
    TResult? Function(UserId userId)? addMember,
    TResult? Function(UserId userId)? removeMember,
    TResult? Function()? saved,
  }) {
    return initialized?.call(initialGroupOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Group> initialGroupOption)? initialized,
    TResult Function(String groupNameStr)? groupNameChanged,
    TResult Function(String usernameStr)? findUserByUsername,
    TResult Function(UserId userId)? addMember,
    TResult Function(UserId userId)? removeMember,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialGroupOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_GroupNameChanged value) groupNameChanged,
    required TResult Function(_FindUserByUsername value) findUserByUsername,
    required TResult Function(_AddMember value) addMember,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_GroupNameChanged value)? groupNameChanged,
    TResult? Function(_FindUserByUsername value)? findUserByUsername,
    TResult? Function(_AddMember value)? addMember,
    TResult? Function(_RemoveMember value)? removeMember,
    TResult? Function(_Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_GroupNameChanged value)? groupNameChanged,
    TResult Function(_FindUserByUsername value)? findUserByUsername,
    TResult Function(_AddMember value)? addMember,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements GroupFormEvent {
  const factory _Initialized(final Option<Group> initialGroupOption) =
      _$_Initialized;

  Option<Group> get initialGroupOption;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GroupNameChangedCopyWith<$Res> {
  factory _$$_GroupNameChangedCopyWith(
          _$_GroupNameChanged value, $Res Function(_$_GroupNameChanged) then) =
      __$$_GroupNameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String groupNameStr});
}

/// @nodoc
class __$$_GroupNameChangedCopyWithImpl<$Res>
    extends _$GroupFormEventCopyWithImpl<$Res, _$_GroupNameChanged>
    implements _$$_GroupNameChangedCopyWith<$Res> {
  __$$_GroupNameChangedCopyWithImpl(
      _$_GroupNameChanged _value, $Res Function(_$_GroupNameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupNameStr = null,
  }) {
    return _then(_$_GroupNameChanged(
      null == groupNameStr
          ? _value.groupNameStr
          : groupNameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GroupNameChanged implements _GroupNameChanged {
  const _$_GroupNameChanged(this.groupNameStr);

  @override
  final String groupNameStr;

  @override
  String toString() {
    return 'GroupFormEvent.groupNameChanged(groupNameStr: $groupNameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupNameChanged &&
            (identical(other.groupNameStr, groupNameStr) ||
                other.groupNameStr == groupNameStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupNameStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroupNameChangedCopyWith<_$_GroupNameChanged> get copyWith =>
      __$$_GroupNameChangedCopyWithImpl<_$_GroupNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Group> initialGroupOption) initialized,
    required TResult Function(String groupNameStr) groupNameChanged,
    required TResult Function(String usernameStr) findUserByUsername,
    required TResult Function(UserId userId) addMember,
    required TResult Function(UserId userId) removeMember,
    required TResult Function() saved,
  }) {
    return groupNameChanged(groupNameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Group> initialGroupOption)? initialized,
    TResult? Function(String groupNameStr)? groupNameChanged,
    TResult? Function(String usernameStr)? findUserByUsername,
    TResult? Function(UserId userId)? addMember,
    TResult? Function(UserId userId)? removeMember,
    TResult? Function()? saved,
  }) {
    return groupNameChanged?.call(groupNameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Group> initialGroupOption)? initialized,
    TResult Function(String groupNameStr)? groupNameChanged,
    TResult Function(String usernameStr)? findUserByUsername,
    TResult Function(UserId userId)? addMember,
    TResult Function(UserId userId)? removeMember,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (groupNameChanged != null) {
      return groupNameChanged(groupNameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_GroupNameChanged value) groupNameChanged,
    required TResult Function(_FindUserByUsername value) findUserByUsername,
    required TResult Function(_AddMember value) addMember,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(_Saved value) saved,
  }) {
    return groupNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_GroupNameChanged value)? groupNameChanged,
    TResult? Function(_FindUserByUsername value)? findUserByUsername,
    TResult? Function(_AddMember value)? addMember,
    TResult? Function(_RemoveMember value)? removeMember,
    TResult? Function(_Saved value)? saved,
  }) {
    return groupNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_GroupNameChanged value)? groupNameChanged,
    TResult Function(_FindUserByUsername value)? findUserByUsername,
    TResult Function(_AddMember value)? addMember,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (groupNameChanged != null) {
      return groupNameChanged(this);
    }
    return orElse();
  }
}

abstract class _GroupNameChanged implements GroupFormEvent {
  const factory _GroupNameChanged(final String groupNameStr) =
      _$_GroupNameChanged;

  String get groupNameStr;
  @JsonKey(ignore: true)
  _$$_GroupNameChangedCopyWith<_$_GroupNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FindUserByUsernameCopyWith<$Res> {
  factory _$$_FindUserByUsernameCopyWith(_$_FindUserByUsername value,
          $Res Function(_$_FindUserByUsername) then) =
      __$$_FindUserByUsernameCopyWithImpl<$Res>;
  @useResult
  $Res call({String usernameStr});
}

/// @nodoc
class __$$_FindUserByUsernameCopyWithImpl<$Res>
    extends _$GroupFormEventCopyWithImpl<$Res, _$_FindUserByUsername>
    implements _$$_FindUserByUsernameCopyWith<$Res> {
  __$$_FindUserByUsernameCopyWithImpl(
      _$_FindUserByUsername _value, $Res Function(_$_FindUserByUsername) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usernameStr = null,
  }) {
    return _then(_$_FindUserByUsername(
      null == usernameStr
          ? _value.usernameStr
          : usernameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FindUserByUsername implements _FindUserByUsername {
  const _$_FindUserByUsername(this.usernameStr);

  @override
  final String usernameStr;

  @override
  String toString() {
    return 'GroupFormEvent.findUserByUsername(usernameStr: $usernameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FindUserByUsername &&
            (identical(other.usernameStr, usernameStr) ||
                other.usernameStr == usernameStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, usernameStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FindUserByUsernameCopyWith<_$_FindUserByUsername> get copyWith =>
      __$$_FindUserByUsernameCopyWithImpl<_$_FindUserByUsername>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Group> initialGroupOption) initialized,
    required TResult Function(String groupNameStr) groupNameChanged,
    required TResult Function(String usernameStr) findUserByUsername,
    required TResult Function(UserId userId) addMember,
    required TResult Function(UserId userId) removeMember,
    required TResult Function() saved,
  }) {
    return findUserByUsername(usernameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Group> initialGroupOption)? initialized,
    TResult? Function(String groupNameStr)? groupNameChanged,
    TResult? Function(String usernameStr)? findUserByUsername,
    TResult? Function(UserId userId)? addMember,
    TResult? Function(UserId userId)? removeMember,
    TResult? Function()? saved,
  }) {
    return findUserByUsername?.call(usernameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Group> initialGroupOption)? initialized,
    TResult Function(String groupNameStr)? groupNameChanged,
    TResult Function(String usernameStr)? findUserByUsername,
    TResult Function(UserId userId)? addMember,
    TResult Function(UserId userId)? removeMember,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (findUserByUsername != null) {
      return findUserByUsername(usernameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_GroupNameChanged value) groupNameChanged,
    required TResult Function(_FindUserByUsername value) findUserByUsername,
    required TResult Function(_AddMember value) addMember,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(_Saved value) saved,
  }) {
    return findUserByUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_GroupNameChanged value)? groupNameChanged,
    TResult? Function(_FindUserByUsername value)? findUserByUsername,
    TResult? Function(_AddMember value)? addMember,
    TResult? Function(_RemoveMember value)? removeMember,
    TResult? Function(_Saved value)? saved,
  }) {
    return findUserByUsername?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_GroupNameChanged value)? groupNameChanged,
    TResult Function(_FindUserByUsername value)? findUserByUsername,
    TResult Function(_AddMember value)? addMember,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (findUserByUsername != null) {
      return findUserByUsername(this);
    }
    return orElse();
  }
}

abstract class _FindUserByUsername implements GroupFormEvent {
  const factory _FindUserByUsername(final String usernameStr) =
      _$_FindUserByUsername;

  String get usernameStr;
  @JsonKey(ignore: true)
  _$$_FindUserByUsernameCopyWith<_$_FindUserByUsername> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddMemberCopyWith<$Res> {
  factory _$$_AddMemberCopyWith(
          _$_AddMember value, $Res Function(_$_AddMember) then) =
      __$$_AddMemberCopyWithImpl<$Res>;
  @useResult
  $Res call({UserId userId});
}

/// @nodoc
class __$$_AddMemberCopyWithImpl<$Res>
    extends _$GroupFormEventCopyWithImpl<$Res, _$_AddMember>
    implements _$$_AddMemberCopyWith<$Res> {
  __$$_AddMemberCopyWithImpl(
      _$_AddMember _value, $Res Function(_$_AddMember) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$_AddMember(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UserId,
    ));
  }
}

/// @nodoc

class _$_AddMember implements _AddMember {
  const _$_AddMember(this.userId);

  @override
  final UserId userId;

  @override
  String toString() {
    return 'GroupFormEvent.addMember(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddMember &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddMemberCopyWith<_$_AddMember> get copyWith =>
      __$$_AddMemberCopyWithImpl<_$_AddMember>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Group> initialGroupOption) initialized,
    required TResult Function(String groupNameStr) groupNameChanged,
    required TResult Function(String usernameStr) findUserByUsername,
    required TResult Function(UserId userId) addMember,
    required TResult Function(UserId userId) removeMember,
    required TResult Function() saved,
  }) {
    return addMember(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Group> initialGroupOption)? initialized,
    TResult? Function(String groupNameStr)? groupNameChanged,
    TResult? Function(String usernameStr)? findUserByUsername,
    TResult? Function(UserId userId)? addMember,
    TResult? Function(UserId userId)? removeMember,
    TResult? Function()? saved,
  }) {
    return addMember?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Group> initialGroupOption)? initialized,
    TResult Function(String groupNameStr)? groupNameChanged,
    TResult Function(String usernameStr)? findUserByUsername,
    TResult Function(UserId userId)? addMember,
    TResult Function(UserId userId)? removeMember,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (addMember != null) {
      return addMember(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_GroupNameChanged value) groupNameChanged,
    required TResult Function(_FindUserByUsername value) findUserByUsername,
    required TResult Function(_AddMember value) addMember,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(_Saved value) saved,
  }) {
    return addMember(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_GroupNameChanged value)? groupNameChanged,
    TResult? Function(_FindUserByUsername value)? findUserByUsername,
    TResult? Function(_AddMember value)? addMember,
    TResult? Function(_RemoveMember value)? removeMember,
    TResult? Function(_Saved value)? saved,
  }) {
    return addMember?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_GroupNameChanged value)? groupNameChanged,
    TResult Function(_FindUserByUsername value)? findUserByUsername,
    TResult Function(_AddMember value)? addMember,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (addMember != null) {
      return addMember(this);
    }
    return orElse();
  }
}

abstract class _AddMember implements GroupFormEvent {
  const factory _AddMember(final UserId userId) = _$_AddMember;

  UserId get userId;
  @JsonKey(ignore: true)
  _$$_AddMemberCopyWith<_$_AddMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveMemberCopyWith<$Res> {
  factory _$$_RemoveMemberCopyWith(
          _$_RemoveMember value, $Res Function(_$_RemoveMember) then) =
      __$$_RemoveMemberCopyWithImpl<$Res>;
  @useResult
  $Res call({UserId userId});
}

/// @nodoc
class __$$_RemoveMemberCopyWithImpl<$Res>
    extends _$GroupFormEventCopyWithImpl<$Res, _$_RemoveMember>
    implements _$$_RemoveMemberCopyWith<$Res> {
  __$$_RemoveMemberCopyWithImpl(
      _$_RemoveMember _value, $Res Function(_$_RemoveMember) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$_RemoveMember(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UserId,
    ));
  }
}

/// @nodoc

class _$_RemoveMember implements _RemoveMember {
  const _$_RemoveMember(this.userId);

  @override
  final UserId userId;

  @override
  String toString() {
    return 'GroupFormEvent.removeMember(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveMember &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveMemberCopyWith<_$_RemoveMember> get copyWith =>
      __$$_RemoveMemberCopyWithImpl<_$_RemoveMember>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Group> initialGroupOption) initialized,
    required TResult Function(String groupNameStr) groupNameChanged,
    required TResult Function(String usernameStr) findUserByUsername,
    required TResult Function(UserId userId) addMember,
    required TResult Function(UserId userId) removeMember,
    required TResult Function() saved,
  }) {
    return removeMember(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Group> initialGroupOption)? initialized,
    TResult? Function(String groupNameStr)? groupNameChanged,
    TResult? Function(String usernameStr)? findUserByUsername,
    TResult? Function(UserId userId)? addMember,
    TResult? Function(UserId userId)? removeMember,
    TResult? Function()? saved,
  }) {
    return removeMember?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Group> initialGroupOption)? initialized,
    TResult Function(String groupNameStr)? groupNameChanged,
    TResult Function(String usernameStr)? findUserByUsername,
    TResult Function(UserId userId)? addMember,
    TResult Function(UserId userId)? removeMember,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (removeMember != null) {
      return removeMember(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_GroupNameChanged value) groupNameChanged,
    required TResult Function(_FindUserByUsername value) findUserByUsername,
    required TResult Function(_AddMember value) addMember,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(_Saved value) saved,
  }) {
    return removeMember(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_GroupNameChanged value)? groupNameChanged,
    TResult? Function(_FindUserByUsername value)? findUserByUsername,
    TResult? Function(_AddMember value)? addMember,
    TResult? Function(_RemoveMember value)? removeMember,
    TResult? Function(_Saved value)? saved,
  }) {
    return removeMember?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_GroupNameChanged value)? groupNameChanged,
    TResult Function(_FindUserByUsername value)? findUserByUsername,
    TResult Function(_AddMember value)? addMember,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (removeMember != null) {
      return removeMember(this);
    }
    return orElse();
  }
}

abstract class _RemoveMember implements GroupFormEvent {
  const factory _RemoveMember(final UserId userId) = _$_RemoveMember;

  UserId get userId;
  @JsonKey(ignore: true)
  _$$_RemoveMemberCopyWith<_$_RemoveMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SavedCopyWith<$Res> {
  factory _$$_SavedCopyWith(_$_Saved value, $Res Function(_$_Saved) then) =
      __$$_SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedCopyWithImpl<$Res>
    extends _$GroupFormEventCopyWithImpl<$Res, _$_Saved>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'GroupFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Group> initialGroupOption) initialized,
    required TResult Function(String groupNameStr) groupNameChanged,
    required TResult Function(String usernameStr) findUserByUsername,
    required TResult Function(UserId userId) addMember,
    required TResult Function(UserId userId) removeMember,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Group> initialGroupOption)? initialized,
    TResult? Function(String groupNameStr)? groupNameChanged,
    TResult? Function(String usernameStr)? findUserByUsername,
    TResult? Function(UserId userId)? addMember,
    TResult? Function(UserId userId)? removeMember,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Group> initialGroupOption)? initialized,
    TResult Function(String groupNameStr)? groupNameChanged,
    TResult Function(String usernameStr)? findUserByUsername,
    TResult Function(UserId userId)? addMember,
    TResult Function(UserId userId)? removeMember,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_GroupNameChanged value) groupNameChanged,
    required TResult Function(_FindUserByUsername value) findUserByUsername,
    required TResult Function(_AddMember value) addMember,
    required TResult Function(_RemoveMember value) removeMember,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_GroupNameChanged value)? groupNameChanged,
    TResult? Function(_FindUserByUsername value)? findUserByUsername,
    TResult? Function(_AddMember value)? addMember,
    TResult? Function(_RemoveMember value)? removeMember,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_GroupNameChanged value)? groupNameChanged,
    TResult Function(_FindUserByUsername value)? findUserByUsername,
    TResult Function(_AddMember value)? addMember,
    TResult Function(_RemoveMember value)? removeMember,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements GroupFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
mixin _$GroupFormState {
  Option<Group> get groupOption => throw _privateConstructorUsedError;
  GroupName get groupName => throw _privateConstructorUsedError;
  Username get findUserByUsername => throw _privateConstructorUsedError;
  List<UserId> get members => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, List<User>>> get usersFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  Option<Either<GroupFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupFormStateCopyWith<GroupFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupFormStateCopyWith<$Res> {
  factory $GroupFormStateCopyWith(
          GroupFormState value, $Res Function(GroupFormState) then) =
      _$GroupFormStateCopyWithImpl<$Res, GroupFormState>;
  @useResult
  $Res call(
      {Option<Group> groupOption,
      GroupName groupName,
      Username findUserByUsername,
      List<UserId> members,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<AuthFailure, List<User>>> usersFailureOrSuccessOption,
      Option<Either<GroupFailure, Unit>> saveFailureOrSuccessOption});
}

/// @nodoc
class _$GroupFormStateCopyWithImpl<$Res, $Val extends GroupFormState>
    implements $GroupFormStateCopyWith<$Res> {
  _$GroupFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupOption = null,
    Object? groupName = null,
    Object? findUserByUsername = null,
    Object? members = null,
    Object? showErrorMessages = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? usersFailureOrSuccessOption = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      groupOption: null == groupOption
          ? _value.groupOption
          : groupOption // ignore: cast_nullable_to_non_nullable
              as Option<Group>,
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as GroupName,
      findUserByUsername: null == findUserByUsername
          ? _value.findUserByUsername
          : findUserByUsername // ignore: cast_nullable_to_non_nullable
              as Username,
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<UserId>,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      usersFailureOrSuccessOption: null == usersFailureOrSuccessOption
          ? _value.usersFailureOrSuccessOption
          : usersFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, List<User>>>,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<GroupFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GroupFormStateCopyWith<$Res>
    implements $GroupFormStateCopyWith<$Res> {
  factory _$$_GroupFormStateCopyWith(
          _$_GroupFormState value, $Res Function(_$_GroupFormState) then) =
      __$$_GroupFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Group> groupOption,
      GroupName groupName,
      Username findUserByUsername,
      List<UserId> members,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<AuthFailure, List<User>>> usersFailureOrSuccessOption,
      Option<Either<GroupFailure, Unit>> saveFailureOrSuccessOption});
}

/// @nodoc
class __$$_GroupFormStateCopyWithImpl<$Res>
    extends _$GroupFormStateCopyWithImpl<$Res, _$_GroupFormState>
    implements _$$_GroupFormStateCopyWith<$Res> {
  __$$_GroupFormStateCopyWithImpl(
      _$_GroupFormState _value, $Res Function(_$_GroupFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupOption = null,
    Object? groupName = null,
    Object? findUserByUsername = null,
    Object? members = null,
    Object? showErrorMessages = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? usersFailureOrSuccessOption = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_$_GroupFormState(
      groupOption: null == groupOption
          ? _value.groupOption
          : groupOption // ignore: cast_nullable_to_non_nullable
              as Option<Group>,
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as GroupName,
      findUserByUsername: null == findUserByUsername
          ? _value.findUserByUsername
          : findUserByUsername // ignore: cast_nullable_to_non_nullable
              as Username,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<UserId>,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      usersFailureOrSuccessOption: null == usersFailureOrSuccessOption
          ? _value.usersFailureOrSuccessOption
          : usersFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, List<User>>>,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<GroupFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_GroupFormState implements _GroupFormState {
  const _$_GroupFormState(
      {required this.groupOption,
      required this.groupName,
      required this.findUserByUsername,
      required final List<UserId> members,
      required this.showErrorMessages,
      required this.isEditing,
      required this.isSaving,
      required this.usersFailureOrSuccessOption,
      required this.saveFailureOrSuccessOption})
      : _members = members;

  @override
  final Option<Group> groupOption;
  @override
  final GroupName groupName;
  @override
  final Username findUserByUsername;
  final List<UserId> _members;
  @override
  List<UserId> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<AuthFailure, List<User>>> usersFailureOrSuccessOption;
  @override
  final Option<Either<GroupFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'GroupFormState(groupOption: $groupOption, groupName: $groupName, findUserByUsername: $findUserByUsername, members: $members, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, usersFailureOrSuccessOption: $usersFailureOrSuccessOption, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupFormState &&
            (identical(other.groupOption, groupOption) ||
                other.groupOption == groupOption) &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            (identical(other.findUserByUsername, findUserByUsername) ||
                other.findUserByUsername == findUserByUsername) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.usersFailureOrSuccessOption,
                    usersFailureOrSuccessOption) ||
                other.usersFailureOrSuccessOption ==
                    usersFailureOrSuccessOption) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                other.saveFailureOrSuccessOption ==
                    saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      groupOption,
      groupName,
      findUserByUsername,
      const DeepCollectionEquality().hash(_members),
      showErrorMessages,
      isEditing,
      isSaving,
      usersFailureOrSuccessOption,
      saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroupFormStateCopyWith<_$_GroupFormState> get copyWith =>
      __$$_GroupFormStateCopyWithImpl<_$_GroupFormState>(this, _$identity);
}

abstract class _GroupFormState implements GroupFormState {
  const factory _GroupFormState(
      {required final Option<Group> groupOption,
      required final GroupName groupName,
      required final Username findUserByUsername,
      required final List<UserId> members,
      required final bool showErrorMessages,
      required final bool isEditing,
      required final bool isSaving,
      required final Option<Either<AuthFailure, List<User>>>
          usersFailureOrSuccessOption,
      required final Option<Either<GroupFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_GroupFormState;

  @override
  Option<Group> get groupOption;
  @override
  GroupName get groupName;
  @override
  Username get findUserByUsername;
  @override
  List<UserId> get members;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<AuthFailure, List<User>>> get usersFailureOrSuccessOption;
  @override
  Option<Either<GroupFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_GroupFormStateCopyWith<_$_GroupFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

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
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<Group> initialGroupOption});
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$GroupFormEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialGroupOption = null,
  }) {
    return _then(_$InitializedImpl(
      null == initialGroupOption
          ? _value.initialGroupOption
          : initialGroupOption // ignore: cast_nullable_to_non_nullable
              as Option<Group>,
    ));
  }
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl(this.initialGroupOption);

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
            other is _$InitializedImpl &&
            (identical(other.initialGroupOption, initialGroupOption) ||
                other.initialGroupOption == initialGroupOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialGroupOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

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
      _$InitializedImpl;

  Option<Group> get initialGroupOption;
  @JsonKey(ignore: true)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GroupNameChangedImplCopyWith<$Res> {
  factory _$$GroupNameChangedImplCopyWith(_$GroupNameChangedImpl value,
          $Res Function(_$GroupNameChangedImpl) then) =
      __$$GroupNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String groupNameStr});
}

/// @nodoc
class __$$GroupNameChangedImplCopyWithImpl<$Res>
    extends _$GroupFormEventCopyWithImpl<$Res, _$GroupNameChangedImpl>
    implements _$$GroupNameChangedImplCopyWith<$Res> {
  __$$GroupNameChangedImplCopyWithImpl(_$GroupNameChangedImpl _value,
      $Res Function(_$GroupNameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupNameStr = null,
  }) {
    return _then(_$GroupNameChangedImpl(
      null == groupNameStr
          ? _value.groupNameStr
          : groupNameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GroupNameChangedImpl implements _GroupNameChanged {
  const _$GroupNameChangedImpl(this.groupNameStr);

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
            other is _$GroupNameChangedImpl &&
            (identical(other.groupNameStr, groupNameStr) ||
                other.groupNameStr == groupNameStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupNameStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupNameChangedImplCopyWith<_$GroupNameChangedImpl> get copyWith =>
      __$$GroupNameChangedImplCopyWithImpl<_$GroupNameChangedImpl>(
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
      _$GroupNameChangedImpl;

  String get groupNameStr;
  @JsonKey(ignore: true)
  _$$GroupNameChangedImplCopyWith<_$GroupNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FindUserByUsernameImplCopyWith<$Res> {
  factory _$$FindUserByUsernameImplCopyWith(_$FindUserByUsernameImpl value,
          $Res Function(_$FindUserByUsernameImpl) then) =
      __$$FindUserByUsernameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String usernameStr});
}

/// @nodoc
class __$$FindUserByUsernameImplCopyWithImpl<$Res>
    extends _$GroupFormEventCopyWithImpl<$Res, _$FindUserByUsernameImpl>
    implements _$$FindUserByUsernameImplCopyWith<$Res> {
  __$$FindUserByUsernameImplCopyWithImpl(_$FindUserByUsernameImpl _value,
      $Res Function(_$FindUserByUsernameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usernameStr = null,
  }) {
    return _then(_$FindUserByUsernameImpl(
      null == usernameStr
          ? _value.usernameStr
          : usernameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FindUserByUsernameImpl implements _FindUserByUsername {
  const _$FindUserByUsernameImpl(this.usernameStr);

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
            other is _$FindUserByUsernameImpl &&
            (identical(other.usernameStr, usernameStr) ||
                other.usernameStr == usernameStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, usernameStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FindUserByUsernameImplCopyWith<_$FindUserByUsernameImpl> get copyWith =>
      __$$FindUserByUsernameImplCopyWithImpl<_$FindUserByUsernameImpl>(
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
      _$FindUserByUsernameImpl;

  String get usernameStr;
  @JsonKey(ignore: true)
  _$$FindUserByUsernameImplCopyWith<_$FindUserByUsernameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddMemberImplCopyWith<$Res> {
  factory _$$AddMemberImplCopyWith(
          _$AddMemberImpl value, $Res Function(_$AddMemberImpl) then) =
      __$$AddMemberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserId userId});
}

/// @nodoc
class __$$AddMemberImplCopyWithImpl<$Res>
    extends _$GroupFormEventCopyWithImpl<$Res, _$AddMemberImpl>
    implements _$$AddMemberImplCopyWith<$Res> {
  __$$AddMemberImplCopyWithImpl(
      _$AddMemberImpl _value, $Res Function(_$AddMemberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$AddMemberImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UserId,
    ));
  }
}

/// @nodoc

class _$AddMemberImpl implements _AddMember {
  const _$AddMemberImpl(this.userId);

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
            other is _$AddMemberImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddMemberImplCopyWith<_$AddMemberImpl> get copyWith =>
      __$$AddMemberImplCopyWithImpl<_$AddMemberImpl>(this, _$identity);

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
  const factory _AddMember(final UserId userId) = _$AddMemberImpl;

  UserId get userId;
  @JsonKey(ignore: true)
  _$$AddMemberImplCopyWith<_$AddMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveMemberImplCopyWith<$Res> {
  factory _$$RemoveMemberImplCopyWith(
          _$RemoveMemberImpl value, $Res Function(_$RemoveMemberImpl) then) =
      __$$RemoveMemberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserId userId});
}

/// @nodoc
class __$$RemoveMemberImplCopyWithImpl<$Res>
    extends _$GroupFormEventCopyWithImpl<$Res, _$RemoveMemberImpl>
    implements _$$RemoveMemberImplCopyWith<$Res> {
  __$$RemoveMemberImplCopyWithImpl(
      _$RemoveMemberImpl _value, $Res Function(_$RemoveMemberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$RemoveMemberImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UserId,
    ));
  }
}

/// @nodoc

class _$RemoveMemberImpl implements _RemoveMember {
  const _$RemoveMemberImpl(this.userId);

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
            other is _$RemoveMemberImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveMemberImplCopyWith<_$RemoveMemberImpl> get copyWith =>
      __$$RemoveMemberImplCopyWithImpl<_$RemoveMemberImpl>(this, _$identity);

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
  const factory _RemoveMember(final UserId userId) = _$RemoveMemberImpl;

  UserId get userId;
  @JsonKey(ignore: true)
  _$$RemoveMemberImplCopyWith<_$RemoveMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavedImplCopyWith<$Res> {
  factory _$$SavedImplCopyWith(
          _$SavedImpl value, $Res Function(_$SavedImpl) then) =
      __$$SavedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavedImplCopyWithImpl<$Res>
    extends _$GroupFormEventCopyWithImpl<$Res, _$SavedImpl>
    implements _$$SavedImplCopyWith<$Res> {
  __$$SavedImplCopyWithImpl(
      _$SavedImpl _value, $Res Function(_$SavedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SavedImpl implements _Saved {
  const _$SavedImpl();

  @override
  String toString() {
    return 'GroupFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SavedImpl);
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
  const factory _Saved() = _$SavedImpl;
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
abstract class _$$GroupFormStateImplCopyWith<$Res>
    implements $GroupFormStateCopyWith<$Res> {
  factory _$$GroupFormStateImplCopyWith(_$GroupFormStateImpl value,
          $Res Function(_$GroupFormStateImpl) then) =
      __$$GroupFormStateImplCopyWithImpl<$Res>;
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
class __$$GroupFormStateImplCopyWithImpl<$Res>
    extends _$GroupFormStateCopyWithImpl<$Res, _$GroupFormStateImpl>
    implements _$$GroupFormStateImplCopyWith<$Res> {
  __$$GroupFormStateImplCopyWithImpl(
      _$GroupFormStateImpl _value, $Res Function(_$GroupFormStateImpl) _then)
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
    return _then(_$GroupFormStateImpl(
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

class _$GroupFormStateImpl implements _GroupFormState {
  const _$GroupFormStateImpl(
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
            other is _$GroupFormStateImpl &&
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
  _$$GroupFormStateImplCopyWith<_$GroupFormStateImpl> get copyWith =>
      __$$GroupFormStateImplCopyWithImpl<_$GroupFormStateImpl>(
          this, _$identity);
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
          saveFailureOrSuccessOption}) = _$GroupFormStateImpl;

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
  _$$GroupFormStateImplCopyWith<_$GroupFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'split_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SplitFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Group group, Option<Expense> initialExpenseOption)
        initialized,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(MemberId memberId, String debtAmountStr)
        deptAmountChanged,
    required TResult Function(MemberId memberId) addParticipant,
    required TResult Function(MemberId memberId) removeParticipant,
    required TResult Function(bool isEquallyDividedBool)
        isEquallyDividedChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Group group, Option<Expense> initialExpenseOption)?
        initialized,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(MemberId memberId, String debtAmountStr)?
        deptAmountChanged,
    TResult? Function(MemberId memberId)? addParticipant,
    TResult? Function(MemberId memberId)? removeParticipant,
    TResult? Function(bool isEquallyDividedBool)? isEquallyDividedChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Group group, Option<Expense> initialExpenseOption)?
        initialized,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(MemberId memberId, String debtAmountStr)?
        deptAmountChanged,
    TResult Function(MemberId memberId)? addParticipant,
    TResult Function(MemberId memberId)? removeParticipant,
    TResult Function(bool isEquallyDividedBool)? isEquallyDividedChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(DeptAmountChanged value) deptAmountChanged,
    required TResult Function(AddParticipant value) addParticipant,
    required TResult Function(RemoveParticipant value) removeParticipant,
    required TResult Function(IsEquallyDividedChanged value)
        isEquallyDividedChanged,
    required TResult Function(Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(AmountChanged value)? amountChanged,
    TResult? Function(DeptAmountChanged value)? deptAmountChanged,
    TResult? Function(AddParticipant value)? addParticipant,
    TResult? Function(RemoveParticipant value)? removeParticipant,
    TResult? Function(IsEquallyDividedChanged value)? isEquallyDividedChanged,
    TResult? Function(Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(DeptAmountChanged value)? deptAmountChanged,
    TResult Function(AddParticipant value)? addParticipant,
    TResult Function(RemoveParticipant value)? removeParticipant,
    TResult Function(IsEquallyDividedChanged value)? isEquallyDividedChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplitFormEventCopyWith<$Res> {
  factory $SplitFormEventCopyWith(
          SplitFormEvent value, $Res Function(SplitFormEvent) then) =
      _$SplitFormEventCopyWithImpl<$Res, SplitFormEvent>;
}

/// @nodoc
class _$SplitFormEventCopyWithImpl<$Res, $Val extends SplitFormEvent>
    implements $SplitFormEventCopyWith<$Res> {
  _$SplitFormEventCopyWithImpl(this._value, this._then);

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
  $Res call({Group group, Option<Expense> initialExpenseOption});
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$SplitFormEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
    Object? initialExpenseOption = null,
  }) {
    return _then(_$InitializedImpl(
      null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group,
      null == initialExpenseOption
          ? _value.initialExpenseOption
          : initialExpenseOption // ignore: cast_nullable_to_non_nullable
              as Option<Expense>,
    ));
  }
}

/// @nodoc

class _$InitializedImpl implements Initialized {
  const _$InitializedImpl(this.group, this.initialExpenseOption);

  @override
  final Group group;
  @override
  final Option<Expense> initialExpenseOption;

  @override
  String toString() {
    return 'SplitFormEvent.initialized(group: $group, initialExpenseOption: $initialExpenseOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.initialExpenseOption, initialExpenseOption) ||
                other.initialExpenseOption == initialExpenseOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, group, initialExpenseOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Group group, Option<Expense> initialExpenseOption)
        initialized,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(MemberId memberId, String debtAmountStr)
        deptAmountChanged,
    required TResult Function(MemberId memberId) addParticipant,
    required TResult Function(MemberId memberId) removeParticipant,
    required TResult Function(bool isEquallyDividedBool)
        isEquallyDividedChanged,
    required TResult Function() saved,
  }) {
    return initialized(group, initialExpenseOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Group group, Option<Expense> initialExpenseOption)?
        initialized,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(MemberId memberId, String debtAmountStr)?
        deptAmountChanged,
    TResult? Function(MemberId memberId)? addParticipant,
    TResult? Function(MemberId memberId)? removeParticipant,
    TResult? Function(bool isEquallyDividedBool)? isEquallyDividedChanged,
    TResult? Function()? saved,
  }) {
    return initialized?.call(group, initialExpenseOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Group group, Option<Expense> initialExpenseOption)?
        initialized,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(MemberId memberId, String debtAmountStr)?
        deptAmountChanged,
    TResult Function(MemberId memberId)? addParticipant,
    TResult Function(MemberId memberId)? removeParticipant,
    TResult Function(bool isEquallyDividedBool)? isEquallyDividedChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(group, initialExpenseOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(DeptAmountChanged value) deptAmountChanged,
    required TResult Function(AddParticipant value) addParticipant,
    required TResult Function(RemoveParticipant value) removeParticipant,
    required TResult Function(IsEquallyDividedChanged value)
        isEquallyDividedChanged,
    required TResult Function(Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(AmountChanged value)? amountChanged,
    TResult? Function(DeptAmountChanged value)? deptAmountChanged,
    TResult? Function(AddParticipant value)? addParticipant,
    TResult? Function(RemoveParticipant value)? removeParticipant,
    TResult? Function(IsEquallyDividedChanged value)? isEquallyDividedChanged,
    TResult? Function(Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(DeptAmountChanged value)? deptAmountChanged,
    TResult Function(AddParticipant value)? addParticipant,
    TResult Function(RemoveParticipant value)? removeParticipant,
    TResult Function(IsEquallyDividedChanged value)? isEquallyDividedChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class Initialized implements SplitFormEvent {
  const factory Initialized(
          final Group group, final Option<Expense> initialExpenseOption) =
      _$InitializedImpl;

  Group get group;
  Option<Expense> get initialExpenseOption;
  @JsonKey(ignore: true)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AmountChangedImplCopyWith<$Res> {
  factory _$$AmountChangedImplCopyWith(
          _$AmountChangedImpl value, $Res Function(_$AmountChangedImpl) then) =
      __$$AmountChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String amountStr});
}

/// @nodoc
class __$$AmountChangedImplCopyWithImpl<$Res>
    extends _$SplitFormEventCopyWithImpl<$Res, _$AmountChangedImpl>
    implements _$$AmountChangedImplCopyWith<$Res> {
  __$$AmountChangedImplCopyWithImpl(
      _$AmountChangedImpl _value, $Res Function(_$AmountChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountStr = null,
  }) {
    return _then(_$AmountChangedImpl(
      null == amountStr
          ? _value.amountStr
          : amountStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AmountChangedImpl implements AmountChanged {
  const _$AmountChangedImpl(this.amountStr);

  @override
  final String amountStr;

  @override
  String toString() {
    return 'SplitFormEvent.amountChanged(amountStr: $amountStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AmountChangedImpl &&
            (identical(other.amountStr, amountStr) ||
                other.amountStr == amountStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amountStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AmountChangedImplCopyWith<_$AmountChangedImpl> get copyWith =>
      __$$AmountChangedImplCopyWithImpl<_$AmountChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Group group, Option<Expense> initialExpenseOption)
        initialized,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(MemberId memberId, String debtAmountStr)
        deptAmountChanged,
    required TResult Function(MemberId memberId) addParticipant,
    required TResult Function(MemberId memberId) removeParticipant,
    required TResult Function(bool isEquallyDividedBool)
        isEquallyDividedChanged,
    required TResult Function() saved,
  }) {
    return amountChanged(amountStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Group group, Option<Expense> initialExpenseOption)?
        initialized,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(MemberId memberId, String debtAmountStr)?
        deptAmountChanged,
    TResult? Function(MemberId memberId)? addParticipant,
    TResult? Function(MemberId memberId)? removeParticipant,
    TResult? Function(bool isEquallyDividedBool)? isEquallyDividedChanged,
    TResult? Function()? saved,
  }) {
    return amountChanged?.call(amountStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Group group, Option<Expense> initialExpenseOption)?
        initialized,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(MemberId memberId, String debtAmountStr)?
        deptAmountChanged,
    TResult Function(MemberId memberId)? addParticipant,
    TResult Function(MemberId memberId)? removeParticipant,
    TResult Function(bool isEquallyDividedBool)? isEquallyDividedChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (amountChanged != null) {
      return amountChanged(amountStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(DeptAmountChanged value) deptAmountChanged,
    required TResult Function(AddParticipant value) addParticipant,
    required TResult Function(RemoveParticipant value) removeParticipant,
    required TResult Function(IsEquallyDividedChanged value)
        isEquallyDividedChanged,
    required TResult Function(Saved value) saved,
  }) {
    return amountChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(AmountChanged value)? amountChanged,
    TResult? Function(DeptAmountChanged value)? deptAmountChanged,
    TResult? Function(AddParticipant value)? addParticipant,
    TResult? Function(RemoveParticipant value)? removeParticipant,
    TResult? Function(IsEquallyDividedChanged value)? isEquallyDividedChanged,
    TResult? Function(Saved value)? saved,
  }) {
    return amountChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(DeptAmountChanged value)? deptAmountChanged,
    TResult Function(AddParticipant value)? addParticipant,
    TResult Function(RemoveParticipant value)? removeParticipant,
    TResult Function(IsEquallyDividedChanged value)? isEquallyDividedChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (amountChanged != null) {
      return amountChanged(this);
    }
    return orElse();
  }
}

abstract class AmountChanged implements SplitFormEvent {
  const factory AmountChanged(final String amountStr) = _$AmountChangedImpl;

  String get amountStr;
  @JsonKey(ignore: true)
  _$$AmountChangedImplCopyWith<_$AmountChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeptAmountChangedImplCopyWith<$Res> {
  factory _$$DeptAmountChangedImplCopyWith(_$DeptAmountChangedImpl value,
          $Res Function(_$DeptAmountChangedImpl) then) =
      __$$DeptAmountChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MemberId memberId, String debtAmountStr});
}

/// @nodoc
class __$$DeptAmountChangedImplCopyWithImpl<$Res>
    extends _$SplitFormEventCopyWithImpl<$Res, _$DeptAmountChangedImpl>
    implements _$$DeptAmountChangedImplCopyWith<$Res> {
  __$$DeptAmountChangedImplCopyWithImpl(_$DeptAmountChangedImpl _value,
      $Res Function(_$DeptAmountChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
    Object? debtAmountStr = null,
  }) {
    return _then(_$DeptAmountChangedImpl(
      null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as MemberId,
      null == debtAmountStr
          ? _value.debtAmountStr
          : debtAmountStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeptAmountChangedImpl implements DeptAmountChanged {
  const _$DeptAmountChangedImpl(this.memberId, this.debtAmountStr);

  @override
  final MemberId memberId;
  @override
  final String debtAmountStr;

  @override
  String toString() {
    return 'SplitFormEvent.deptAmountChanged(memberId: $memberId, debtAmountStr: $debtAmountStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeptAmountChangedImpl &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.debtAmountStr, debtAmountStr) ||
                other.debtAmountStr == debtAmountStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, memberId, debtAmountStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeptAmountChangedImplCopyWith<_$DeptAmountChangedImpl> get copyWith =>
      __$$DeptAmountChangedImplCopyWithImpl<_$DeptAmountChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Group group, Option<Expense> initialExpenseOption)
        initialized,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(MemberId memberId, String debtAmountStr)
        deptAmountChanged,
    required TResult Function(MemberId memberId) addParticipant,
    required TResult Function(MemberId memberId) removeParticipant,
    required TResult Function(bool isEquallyDividedBool)
        isEquallyDividedChanged,
    required TResult Function() saved,
  }) {
    return deptAmountChanged(memberId, debtAmountStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Group group, Option<Expense> initialExpenseOption)?
        initialized,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(MemberId memberId, String debtAmountStr)?
        deptAmountChanged,
    TResult? Function(MemberId memberId)? addParticipant,
    TResult? Function(MemberId memberId)? removeParticipant,
    TResult? Function(bool isEquallyDividedBool)? isEquallyDividedChanged,
    TResult? Function()? saved,
  }) {
    return deptAmountChanged?.call(memberId, debtAmountStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Group group, Option<Expense> initialExpenseOption)?
        initialized,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(MemberId memberId, String debtAmountStr)?
        deptAmountChanged,
    TResult Function(MemberId memberId)? addParticipant,
    TResult Function(MemberId memberId)? removeParticipant,
    TResult Function(bool isEquallyDividedBool)? isEquallyDividedChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (deptAmountChanged != null) {
      return deptAmountChanged(memberId, debtAmountStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(DeptAmountChanged value) deptAmountChanged,
    required TResult Function(AddParticipant value) addParticipant,
    required TResult Function(RemoveParticipant value) removeParticipant,
    required TResult Function(IsEquallyDividedChanged value)
        isEquallyDividedChanged,
    required TResult Function(Saved value) saved,
  }) {
    return deptAmountChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(AmountChanged value)? amountChanged,
    TResult? Function(DeptAmountChanged value)? deptAmountChanged,
    TResult? Function(AddParticipant value)? addParticipant,
    TResult? Function(RemoveParticipant value)? removeParticipant,
    TResult? Function(IsEquallyDividedChanged value)? isEquallyDividedChanged,
    TResult? Function(Saved value)? saved,
  }) {
    return deptAmountChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(DeptAmountChanged value)? deptAmountChanged,
    TResult Function(AddParticipant value)? addParticipant,
    TResult Function(RemoveParticipant value)? removeParticipant,
    TResult Function(IsEquallyDividedChanged value)? isEquallyDividedChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (deptAmountChanged != null) {
      return deptAmountChanged(this);
    }
    return orElse();
  }
}

abstract class DeptAmountChanged implements SplitFormEvent {
  const factory DeptAmountChanged(
          final MemberId memberId, final String debtAmountStr) =
      _$DeptAmountChangedImpl;

  MemberId get memberId;
  String get debtAmountStr;
  @JsonKey(ignore: true)
  _$$DeptAmountChangedImplCopyWith<_$DeptAmountChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddParticipantImplCopyWith<$Res> {
  factory _$$AddParticipantImplCopyWith(_$AddParticipantImpl value,
          $Res Function(_$AddParticipantImpl) then) =
      __$$AddParticipantImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MemberId memberId});
}

/// @nodoc
class __$$AddParticipantImplCopyWithImpl<$Res>
    extends _$SplitFormEventCopyWithImpl<$Res, _$AddParticipantImpl>
    implements _$$AddParticipantImplCopyWith<$Res> {
  __$$AddParticipantImplCopyWithImpl(
      _$AddParticipantImpl _value, $Res Function(_$AddParticipantImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
  }) {
    return _then(_$AddParticipantImpl(
      null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as MemberId,
    ));
  }
}

/// @nodoc

class _$AddParticipantImpl implements AddParticipant {
  const _$AddParticipantImpl(this.memberId);

  @override
  final MemberId memberId;

  @override
  String toString() {
    return 'SplitFormEvent.addParticipant(memberId: $memberId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddParticipantImpl &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, memberId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddParticipantImplCopyWith<_$AddParticipantImpl> get copyWith =>
      __$$AddParticipantImplCopyWithImpl<_$AddParticipantImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Group group, Option<Expense> initialExpenseOption)
        initialized,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(MemberId memberId, String debtAmountStr)
        deptAmountChanged,
    required TResult Function(MemberId memberId) addParticipant,
    required TResult Function(MemberId memberId) removeParticipant,
    required TResult Function(bool isEquallyDividedBool)
        isEquallyDividedChanged,
    required TResult Function() saved,
  }) {
    return addParticipant(memberId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Group group, Option<Expense> initialExpenseOption)?
        initialized,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(MemberId memberId, String debtAmountStr)?
        deptAmountChanged,
    TResult? Function(MemberId memberId)? addParticipant,
    TResult? Function(MemberId memberId)? removeParticipant,
    TResult? Function(bool isEquallyDividedBool)? isEquallyDividedChanged,
    TResult? Function()? saved,
  }) {
    return addParticipant?.call(memberId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Group group, Option<Expense> initialExpenseOption)?
        initialized,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(MemberId memberId, String debtAmountStr)?
        deptAmountChanged,
    TResult Function(MemberId memberId)? addParticipant,
    TResult Function(MemberId memberId)? removeParticipant,
    TResult Function(bool isEquallyDividedBool)? isEquallyDividedChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (addParticipant != null) {
      return addParticipant(memberId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(DeptAmountChanged value) deptAmountChanged,
    required TResult Function(AddParticipant value) addParticipant,
    required TResult Function(RemoveParticipant value) removeParticipant,
    required TResult Function(IsEquallyDividedChanged value)
        isEquallyDividedChanged,
    required TResult Function(Saved value) saved,
  }) {
    return addParticipant(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(AmountChanged value)? amountChanged,
    TResult? Function(DeptAmountChanged value)? deptAmountChanged,
    TResult? Function(AddParticipant value)? addParticipant,
    TResult? Function(RemoveParticipant value)? removeParticipant,
    TResult? Function(IsEquallyDividedChanged value)? isEquallyDividedChanged,
    TResult? Function(Saved value)? saved,
  }) {
    return addParticipant?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(DeptAmountChanged value)? deptAmountChanged,
    TResult Function(AddParticipant value)? addParticipant,
    TResult Function(RemoveParticipant value)? removeParticipant,
    TResult Function(IsEquallyDividedChanged value)? isEquallyDividedChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (addParticipant != null) {
      return addParticipant(this);
    }
    return orElse();
  }
}

abstract class AddParticipant implements SplitFormEvent {
  const factory AddParticipant(final MemberId memberId) = _$AddParticipantImpl;

  MemberId get memberId;
  @JsonKey(ignore: true)
  _$$AddParticipantImplCopyWith<_$AddParticipantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveParticipantImplCopyWith<$Res> {
  factory _$$RemoveParticipantImplCopyWith(_$RemoveParticipantImpl value,
          $Res Function(_$RemoveParticipantImpl) then) =
      __$$RemoveParticipantImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MemberId memberId});
}

/// @nodoc
class __$$RemoveParticipantImplCopyWithImpl<$Res>
    extends _$SplitFormEventCopyWithImpl<$Res, _$RemoveParticipantImpl>
    implements _$$RemoveParticipantImplCopyWith<$Res> {
  __$$RemoveParticipantImplCopyWithImpl(_$RemoveParticipantImpl _value,
      $Res Function(_$RemoveParticipantImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
  }) {
    return _then(_$RemoveParticipantImpl(
      null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as MemberId,
    ));
  }
}

/// @nodoc

class _$RemoveParticipantImpl implements RemoveParticipant {
  const _$RemoveParticipantImpl(this.memberId);

  @override
  final MemberId memberId;

  @override
  String toString() {
    return 'SplitFormEvent.removeParticipant(memberId: $memberId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveParticipantImpl &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, memberId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveParticipantImplCopyWith<_$RemoveParticipantImpl> get copyWith =>
      __$$RemoveParticipantImplCopyWithImpl<_$RemoveParticipantImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Group group, Option<Expense> initialExpenseOption)
        initialized,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(MemberId memberId, String debtAmountStr)
        deptAmountChanged,
    required TResult Function(MemberId memberId) addParticipant,
    required TResult Function(MemberId memberId) removeParticipant,
    required TResult Function(bool isEquallyDividedBool)
        isEquallyDividedChanged,
    required TResult Function() saved,
  }) {
    return removeParticipant(memberId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Group group, Option<Expense> initialExpenseOption)?
        initialized,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(MemberId memberId, String debtAmountStr)?
        deptAmountChanged,
    TResult? Function(MemberId memberId)? addParticipant,
    TResult? Function(MemberId memberId)? removeParticipant,
    TResult? Function(bool isEquallyDividedBool)? isEquallyDividedChanged,
    TResult? Function()? saved,
  }) {
    return removeParticipant?.call(memberId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Group group, Option<Expense> initialExpenseOption)?
        initialized,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(MemberId memberId, String debtAmountStr)?
        deptAmountChanged,
    TResult Function(MemberId memberId)? addParticipant,
    TResult Function(MemberId memberId)? removeParticipant,
    TResult Function(bool isEquallyDividedBool)? isEquallyDividedChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (removeParticipant != null) {
      return removeParticipant(memberId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(DeptAmountChanged value) deptAmountChanged,
    required TResult Function(AddParticipant value) addParticipant,
    required TResult Function(RemoveParticipant value) removeParticipant,
    required TResult Function(IsEquallyDividedChanged value)
        isEquallyDividedChanged,
    required TResult Function(Saved value) saved,
  }) {
    return removeParticipant(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(AmountChanged value)? amountChanged,
    TResult? Function(DeptAmountChanged value)? deptAmountChanged,
    TResult? Function(AddParticipant value)? addParticipant,
    TResult? Function(RemoveParticipant value)? removeParticipant,
    TResult? Function(IsEquallyDividedChanged value)? isEquallyDividedChanged,
    TResult? Function(Saved value)? saved,
  }) {
    return removeParticipant?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(DeptAmountChanged value)? deptAmountChanged,
    TResult Function(AddParticipant value)? addParticipant,
    TResult Function(RemoveParticipant value)? removeParticipant,
    TResult Function(IsEquallyDividedChanged value)? isEquallyDividedChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (removeParticipant != null) {
      return removeParticipant(this);
    }
    return orElse();
  }
}

abstract class RemoveParticipant implements SplitFormEvent {
  const factory RemoveParticipant(final MemberId memberId) =
      _$RemoveParticipantImpl;

  MemberId get memberId;
  @JsonKey(ignore: true)
  _$$RemoveParticipantImplCopyWith<_$RemoveParticipantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsEquallyDividedChangedImplCopyWith<$Res> {
  factory _$$IsEquallyDividedChangedImplCopyWith(
          _$IsEquallyDividedChangedImpl value,
          $Res Function(_$IsEquallyDividedChangedImpl) then) =
      __$$IsEquallyDividedChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isEquallyDividedBool});
}

/// @nodoc
class __$$IsEquallyDividedChangedImplCopyWithImpl<$Res>
    extends _$SplitFormEventCopyWithImpl<$Res, _$IsEquallyDividedChangedImpl>
    implements _$$IsEquallyDividedChangedImplCopyWith<$Res> {
  __$$IsEquallyDividedChangedImplCopyWithImpl(
      _$IsEquallyDividedChangedImpl _value,
      $Res Function(_$IsEquallyDividedChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEquallyDividedBool = null,
  }) {
    return _then(_$IsEquallyDividedChangedImpl(
      null == isEquallyDividedBool
          ? _value.isEquallyDividedBool
          : isEquallyDividedBool // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$IsEquallyDividedChangedImpl implements IsEquallyDividedChanged {
  const _$IsEquallyDividedChangedImpl(this.isEquallyDividedBool);

  @override
  final bool isEquallyDividedBool;

  @override
  String toString() {
    return 'SplitFormEvent.isEquallyDividedChanged(isEquallyDividedBool: $isEquallyDividedBool)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsEquallyDividedChangedImpl &&
            (identical(other.isEquallyDividedBool, isEquallyDividedBool) ||
                other.isEquallyDividedBool == isEquallyDividedBool));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isEquallyDividedBool);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IsEquallyDividedChangedImplCopyWith<_$IsEquallyDividedChangedImpl>
      get copyWith => __$$IsEquallyDividedChangedImplCopyWithImpl<
          _$IsEquallyDividedChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Group group, Option<Expense> initialExpenseOption)
        initialized,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(MemberId memberId, String debtAmountStr)
        deptAmountChanged,
    required TResult Function(MemberId memberId) addParticipant,
    required TResult Function(MemberId memberId) removeParticipant,
    required TResult Function(bool isEquallyDividedBool)
        isEquallyDividedChanged,
    required TResult Function() saved,
  }) {
    return isEquallyDividedChanged(isEquallyDividedBool);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Group group, Option<Expense> initialExpenseOption)?
        initialized,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(MemberId memberId, String debtAmountStr)?
        deptAmountChanged,
    TResult? Function(MemberId memberId)? addParticipant,
    TResult? Function(MemberId memberId)? removeParticipant,
    TResult? Function(bool isEquallyDividedBool)? isEquallyDividedChanged,
    TResult? Function()? saved,
  }) {
    return isEquallyDividedChanged?.call(isEquallyDividedBool);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Group group, Option<Expense> initialExpenseOption)?
        initialized,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(MemberId memberId, String debtAmountStr)?
        deptAmountChanged,
    TResult Function(MemberId memberId)? addParticipant,
    TResult Function(MemberId memberId)? removeParticipant,
    TResult Function(bool isEquallyDividedBool)? isEquallyDividedChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (isEquallyDividedChanged != null) {
      return isEquallyDividedChanged(isEquallyDividedBool);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(DeptAmountChanged value) deptAmountChanged,
    required TResult Function(AddParticipant value) addParticipant,
    required TResult Function(RemoveParticipant value) removeParticipant,
    required TResult Function(IsEquallyDividedChanged value)
        isEquallyDividedChanged,
    required TResult Function(Saved value) saved,
  }) {
    return isEquallyDividedChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(AmountChanged value)? amountChanged,
    TResult? Function(DeptAmountChanged value)? deptAmountChanged,
    TResult? Function(AddParticipant value)? addParticipant,
    TResult? Function(RemoveParticipant value)? removeParticipant,
    TResult? Function(IsEquallyDividedChanged value)? isEquallyDividedChanged,
    TResult? Function(Saved value)? saved,
  }) {
    return isEquallyDividedChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(DeptAmountChanged value)? deptAmountChanged,
    TResult Function(AddParticipant value)? addParticipant,
    TResult Function(RemoveParticipant value)? removeParticipant,
    TResult Function(IsEquallyDividedChanged value)? isEquallyDividedChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (isEquallyDividedChanged != null) {
      return isEquallyDividedChanged(this);
    }
    return orElse();
  }
}

abstract class IsEquallyDividedChanged implements SplitFormEvent {
  const factory IsEquallyDividedChanged(final bool isEquallyDividedBool) =
      _$IsEquallyDividedChangedImpl;

  bool get isEquallyDividedBool;
  @JsonKey(ignore: true)
  _$$IsEquallyDividedChangedImplCopyWith<_$IsEquallyDividedChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavedImplCopyWith<$Res> {
  factory _$$SavedImplCopyWith(
          _$SavedImpl value, $Res Function(_$SavedImpl) then) =
      __$$SavedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavedImplCopyWithImpl<$Res>
    extends _$SplitFormEventCopyWithImpl<$Res, _$SavedImpl>
    implements _$$SavedImplCopyWith<$Res> {
  __$$SavedImplCopyWithImpl(
      _$SavedImpl _value, $Res Function(_$SavedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SavedImpl implements Saved {
  const _$SavedImpl();

  @override
  String toString() {
    return 'SplitFormEvent.saved()';
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
    required TResult Function(Group group, Option<Expense> initialExpenseOption)
        initialized,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(MemberId memberId, String debtAmountStr)
        deptAmountChanged,
    required TResult Function(MemberId memberId) addParticipant,
    required TResult Function(MemberId memberId) removeParticipant,
    required TResult Function(bool isEquallyDividedBool)
        isEquallyDividedChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Group group, Option<Expense> initialExpenseOption)?
        initialized,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(MemberId memberId, String debtAmountStr)?
        deptAmountChanged,
    TResult? Function(MemberId memberId)? addParticipant,
    TResult? Function(MemberId memberId)? removeParticipant,
    TResult? Function(bool isEquallyDividedBool)? isEquallyDividedChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Group group, Option<Expense> initialExpenseOption)?
        initialized,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(MemberId memberId, String debtAmountStr)?
        deptAmountChanged,
    TResult Function(MemberId memberId)? addParticipant,
    TResult Function(MemberId memberId)? removeParticipant,
    TResult Function(bool isEquallyDividedBool)? isEquallyDividedChanged,
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
    required TResult Function(Initialized value) initialized,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(DeptAmountChanged value) deptAmountChanged,
    required TResult Function(AddParticipant value) addParticipant,
    required TResult Function(RemoveParticipant value) removeParticipant,
    required TResult Function(IsEquallyDividedChanged value)
        isEquallyDividedChanged,
    required TResult Function(Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(AmountChanged value)? amountChanged,
    TResult? Function(DeptAmountChanged value)? deptAmountChanged,
    TResult? Function(AddParticipant value)? addParticipant,
    TResult? Function(RemoveParticipant value)? removeParticipant,
    TResult? Function(IsEquallyDividedChanged value)? isEquallyDividedChanged,
    TResult? Function(Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(DeptAmountChanged value)? deptAmountChanged,
    TResult Function(AddParticipant value)? addParticipant,
    TResult Function(RemoveParticipant value)? removeParticipant,
    TResult Function(IsEquallyDividedChanged value)? isEquallyDividedChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class Saved implements SplitFormEvent {
  const factory Saved() = _$SavedImpl;
}

/// @nodoc
mixin _$SplitFormState {
  Option<Group> get groupOption => throw _privateConstructorUsedError;
  TransactionAmount get amount => throw _privateConstructorUsedError;
  List<Map<MemberId, DebtAmount>> get deptAmounts =>
      throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get isEquallyDivided => throw _privateConstructorUsedError;
  Option<Either<SplitFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SplitFormStateCopyWith<SplitFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplitFormStateCopyWith<$Res> {
  factory $SplitFormStateCopyWith(
          SplitFormState value, $Res Function(SplitFormState) then) =
      _$SplitFormStateCopyWithImpl<$Res, SplitFormState>;
  @useResult
  $Res call(
      {Option<Group> groupOption,
      TransactionAmount amount,
      List<Map<MemberId, DebtAmount>> deptAmounts,
      bool showErrorMessages,
      bool isSaving,
      bool isEquallyDivided,
      Option<Either<SplitFailure, Unit>> saveFailureOrSuccessOption});
}

/// @nodoc
class _$SplitFormStateCopyWithImpl<$Res, $Val extends SplitFormState>
    implements $SplitFormStateCopyWith<$Res> {
  _$SplitFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupOption = null,
    Object? amount = null,
    Object? deptAmounts = null,
    Object? showErrorMessages = null,
    Object? isSaving = null,
    Object? isEquallyDivided = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      groupOption: null == groupOption
          ? _value.groupOption
          : groupOption // ignore: cast_nullable_to_non_nullable
              as Option<Group>,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as TransactionAmount,
      deptAmounts: null == deptAmounts
          ? _value.deptAmounts
          : deptAmounts // ignore: cast_nullable_to_non_nullable
              as List<Map<MemberId, DebtAmount>>,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isEquallyDivided: null == isEquallyDivided
          ? _value.isEquallyDivided
          : isEquallyDivided // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SplitFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SplitFormStateImplCopyWith<$Res>
    implements $SplitFormStateCopyWith<$Res> {
  factory _$$SplitFormStateImplCopyWith(_$SplitFormStateImpl value,
          $Res Function(_$SplitFormStateImpl) then) =
      __$$SplitFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Group> groupOption,
      TransactionAmount amount,
      List<Map<MemberId, DebtAmount>> deptAmounts,
      bool showErrorMessages,
      bool isSaving,
      bool isEquallyDivided,
      Option<Either<SplitFailure, Unit>> saveFailureOrSuccessOption});
}

/// @nodoc
class __$$SplitFormStateImplCopyWithImpl<$Res>
    extends _$SplitFormStateCopyWithImpl<$Res, _$SplitFormStateImpl>
    implements _$$SplitFormStateImplCopyWith<$Res> {
  __$$SplitFormStateImplCopyWithImpl(
      _$SplitFormStateImpl _value, $Res Function(_$SplitFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupOption = null,
    Object? amount = null,
    Object? deptAmounts = null,
    Object? showErrorMessages = null,
    Object? isSaving = null,
    Object? isEquallyDivided = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_$SplitFormStateImpl(
      groupOption: null == groupOption
          ? _value.groupOption
          : groupOption // ignore: cast_nullable_to_non_nullable
              as Option<Group>,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as TransactionAmount,
      deptAmounts: null == deptAmounts
          ? _value._deptAmounts
          : deptAmounts // ignore: cast_nullable_to_non_nullable
              as List<Map<MemberId, DebtAmount>>,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isEquallyDivided: null == isEquallyDivided
          ? _value.isEquallyDivided
          : isEquallyDivided // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SplitFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$SplitFormStateImpl implements _SplitFormState {
  const _$SplitFormStateImpl(
      {required this.groupOption,
      required this.amount,
      required final List<Map<MemberId, DebtAmount>> deptAmounts,
      required this.showErrorMessages,
      required this.isSaving,
      required this.isEquallyDivided,
      required this.saveFailureOrSuccessOption})
      : _deptAmounts = deptAmounts;

  @override
  final Option<Group> groupOption;
  @override
  final TransactionAmount amount;
  final List<Map<MemberId, DebtAmount>> _deptAmounts;
  @override
  List<Map<MemberId, DebtAmount>> get deptAmounts {
    if (_deptAmounts is EqualUnmodifiableListView) return _deptAmounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deptAmounts);
  }

  @override
  final bool showErrorMessages;
  @override
  final bool isSaving;
  @override
  final bool isEquallyDivided;
  @override
  final Option<Either<SplitFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'SplitFormState(groupOption: $groupOption, amount: $amount, deptAmounts: $deptAmounts, showErrorMessages: $showErrorMessages, isSaving: $isSaving, isEquallyDivided: $isEquallyDivided, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SplitFormStateImpl &&
            (identical(other.groupOption, groupOption) ||
                other.groupOption == groupOption) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            const DeepCollectionEquality()
                .equals(other._deptAmounts, _deptAmounts) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.isEquallyDivided, isEquallyDivided) ||
                other.isEquallyDivided == isEquallyDivided) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                other.saveFailureOrSuccessOption ==
                    saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      groupOption,
      amount,
      const DeepCollectionEquality().hash(_deptAmounts),
      showErrorMessages,
      isSaving,
      isEquallyDivided,
      saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SplitFormStateImplCopyWith<_$SplitFormStateImpl> get copyWith =>
      __$$SplitFormStateImplCopyWithImpl<_$SplitFormStateImpl>(
          this, _$identity);
}

abstract class _SplitFormState implements SplitFormState {
  const factory _SplitFormState(
      {required final Option<Group> groupOption,
      required final TransactionAmount amount,
      required final List<Map<MemberId, DebtAmount>> deptAmounts,
      required final bool showErrorMessages,
      required final bool isSaving,
      required final bool isEquallyDivided,
      required final Option<Either<SplitFailure, Unit>>
          saveFailureOrSuccessOption}) = _$SplitFormStateImpl;

  @override
  Option<Group> get groupOption;
  @override
  TransactionAmount get amount;
  @override
  List<Map<MemberId, DebtAmount>> get deptAmounts;
  @override
  bool get showErrorMessages;
  @override
  bool get isSaving;
  @override
  bool get isEquallyDivided;
  @override
  Option<Either<SplitFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$SplitFormStateImplCopyWith<_$SplitFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

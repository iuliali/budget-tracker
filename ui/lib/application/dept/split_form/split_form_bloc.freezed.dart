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
abstract class _$$InitializedCopyWith<$Res> {
  factory _$$InitializedCopyWith(
          _$Initialized value, $Res Function(_$Initialized) then) =
      __$$InitializedCopyWithImpl<$Res>;
  @useResult
  $Res call({Group group, Option<Expense> initialExpenseOption});
}

/// @nodoc
class __$$InitializedCopyWithImpl<$Res>
    extends _$SplitFormEventCopyWithImpl<$Res, _$Initialized>
    implements _$$InitializedCopyWith<$Res> {
  __$$InitializedCopyWithImpl(
      _$Initialized _value, $Res Function(_$Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
    Object? initialExpenseOption = null,
  }) {
    return _then(_$Initialized(
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

class _$Initialized implements Initialized {
  const _$Initialized(this.group, this.initialExpenseOption);

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
            other is _$Initialized &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.initialExpenseOption, initialExpenseOption) ||
                other.initialExpenseOption == initialExpenseOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, group, initialExpenseOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedCopyWith<_$Initialized> get copyWith =>
      __$$InitializedCopyWithImpl<_$Initialized>(this, _$identity);

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
      _$Initialized;

  Group get group;
  Option<Expense> get initialExpenseOption;
  @JsonKey(ignore: true)
  _$$InitializedCopyWith<_$Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AmountChangedCopyWith<$Res> {
  factory _$$AmountChangedCopyWith(
          _$AmountChanged value, $Res Function(_$AmountChanged) then) =
      __$$AmountChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String amountStr});
}

/// @nodoc
class __$$AmountChangedCopyWithImpl<$Res>
    extends _$SplitFormEventCopyWithImpl<$Res, _$AmountChanged>
    implements _$$AmountChangedCopyWith<$Res> {
  __$$AmountChangedCopyWithImpl(
      _$AmountChanged _value, $Res Function(_$AmountChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountStr = null,
  }) {
    return _then(_$AmountChanged(
      null == amountStr
          ? _value.amountStr
          : amountStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AmountChanged implements AmountChanged {
  const _$AmountChanged(this.amountStr);

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
            other is _$AmountChanged &&
            (identical(other.amountStr, amountStr) ||
                other.amountStr == amountStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amountStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AmountChangedCopyWith<_$AmountChanged> get copyWith =>
      __$$AmountChangedCopyWithImpl<_$AmountChanged>(this, _$identity);

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
  const factory AmountChanged(final String amountStr) = _$AmountChanged;

  String get amountStr;
  @JsonKey(ignore: true)
  _$$AmountChangedCopyWith<_$AmountChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeptAmountChangedCopyWith<$Res> {
  factory _$$DeptAmountChangedCopyWith(
          _$DeptAmountChanged value, $Res Function(_$DeptAmountChanged) then) =
      __$$DeptAmountChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({MemberId memberId, String debtAmountStr});
}

/// @nodoc
class __$$DeptAmountChangedCopyWithImpl<$Res>
    extends _$SplitFormEventCopyWithImpl<$Res, _$DeptAmountChanged>
    implements _$$DeptAmountChangedCopyWith<$Res> {
  __$$DeptAmountChangedCopyWithImpl(
      _$DeptAmountChanged _value, $Res Function(_$DeptAmountChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
    Object? debtAmountStr = null,
  }) {
    return _then(_$DeptAmountChanged(
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

class _$DeptAmountChanged implements DeptAmountChanged {
  const _$DeptAmountChanged(this.memberId, this.debtAmountStr);

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
            other is _$DeptAmountChanged &&
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
  _$$DeptAmountChangedCopyWith<_$DeptAmountChanged> get copyWith =>
      __$$DeptAmountChangedCopyWithImpl<_$DeptAmountChanged>(this, _$identity);

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
      _$DeptAmountChanged;

  MemberId get memberId;
  String get debtAmountStr;
  @JsonKey(ignore: true)
  _$$DeptAmountChangedCopyWith<_$DeptAmountChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddParticipantCopyWith<$Res> {
  factory _$$AddParticipantCopyWith(
          _$AddParticipant value, $Res Function(_$AddParticipant) then) =
      __$$AddParticipantCopyWithImpl<$Res>;
  @useResult
  $Res call({MemberId memberId});
}

/// @nodoc
class __$$AddParticipantCopyWithImpl<$Res>
    extends _$SplitFormEventCopyWithImpl<$Res, _$AddParticipant>
    implements _$$AddParticipantCopyWith<$Res> {
  __$$AddParticipantCopyWithImpl(
      _$AddParticipant _value, $Res Function(_$AddParticipant) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
  }) {
    return _then(_$AddParticipant(
      null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as MemberId,
    ));
  }
}

/// @nodoc

class _$AddParticipant implements AddParticipant {
  const _$AddParticipant(this.memberId);

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
            other is _$AddParticipant &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, memberId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddParticipantCopyWith<_$AddParticipant> get copyWith =>
      __$$AddParticipantCopyWithImpl<_$AddParticipant>(this, _$identity);

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
  const factory AddParticipant(final MemberId memberId) = _$AddParticipant;

  MemberId get memberId;
  @JsonKey(ignore: true)
  _$$AddParticipantCopyWith<_$AddParticipant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveParticipantCopyWith<$Res> {
  factory _$$RemoveParticipantCopyWith(
          _$RemoveParticipant value, $Res Function(_$RemoveParticipant) then) =
      __$$RemoveParticipantCopyWithImpl<$Res>;
  @useResult
  $Res call({MemberId memberId});
}

/// @nodoc
class __$$RemoveParticipantCopyWithImpl<$Res>
    extends _$SplitFormEventCopyWithImpl<$Res, _$RemoveParticipant>
    implements _$$RemoveParticipantCopyWith<$Res> {
  __$$RemoveParticipantCopyWithImpl(
      _$RemoveParticipant _value, $Res Function(_$RemoveParticipant) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
  }) {
    return _then(_$RemoveParticipant(
      null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as MemberId,
    ));
  }
}

/// @nodoc

class _$RemoveParticipant implements RemoveParticipant {
  const _$RemoveParticipant(this.memberId);

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
            other is _$RemoveParticipant &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, memberId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveParticipantCopyWith<_$RemoveParticipant> get copyWith =>
      __$$RemoveParticipantCopyWithImpl<_$RemoveParticipant>(this, _$identity);

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
      _$RemoveParticipant;

  MemberId get memberId;
  @JsonKey(ignore: true)
  _$$RemoveParticipantCopyWith<_$RemoveParticipant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsEquallyDividedChangedCopyWith<$Res> {
  factory _$$IsEquallyDividedChangedCopyWith(_$IsEquallyDividedChanged value,
          $Res Function(_$IsEquallyDividedChanged) then) =
      __$$IsEquallyDividedChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isEquallyDividedBool});
}

/// @nodoc
class __$$IsEquallyDividedChangedCopyWithImpl<$Res>
    extends _$SplitFormEventCopyWithImpl<$Res, _$IsEquallyDividedChanged>
    implements _$$IsEquallyDividedChangedCopyWith<$Res> {
  __$$IsEquallyDividedChangedCopyWithImpl(_$IsEquallyDividedChanged _value,
      $Res Function(_$IsEquallyDividedChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEquallyDividedBool = null,
  }) {
    return _then(_$IsEquallyDividedChanged(
      null == isEquallyDividedBool
          ? _value.isEquallyDividedBool
          : isEquallyDividedBool // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$IsEquallyDividedChanged implements IsEquallyDividedChanged {
  const _$IsEquallyDividedChanged(this.isEquallyDividedBool);

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
            other is _$IsEquallyDividedChanged &&
            (identical(other.isEquallyDividedBool, isEquallyDividedBool) ||
                other.isEquallyDividedBool == isEquallyDividedBool));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isEquallyDividedBool);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IsEquallyDividedChangedCopyWith<_$IsEquallyDividedChanged> get copyWith =>
      __$$IsEquallyDividedChangedCopyWithImpl<_$IsEquallyDividedChanged>(
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
      _$IsEquallyDividedChanged;

  bool get isEquallyDividedBool;
  @JsonKey(ignore: true)
  _$$IsEquallyDividedChangedCopyWith<_$IsEquallyDividedChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavedCopyWith<$Res> {
  factory _$$SavedCopyWith(_$Saved value, $Res Function(_$Saved) then) =
      __$$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavedCopyWithImpl<$Res>
    extends _$SplitFormEventCopyWithImpl<$Res, _$Saved>
    implements _$$SavedCopyWith<$Res> {
  __$$SavedCopyWithImpl(_$Saved _value, $Res Function(_$Saved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Saved implements Saved {
  const _$Saved();

  @override
  String toString() {
    return 'SplitFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Saved);
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
  const factory Saved() = _$Saved;
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
abstract class _$$_SplitFormStateCopyWith<$Res>
    implements $SplitFormStateCopyWith<$Res> {
  factory _$$_SplitFormStateCopyWith(
          _$_SplitFormState value, $Res Function(_$_SplitFormState) then) =
      __$$_SplitFormStateCopyWithImpl<$Res>;
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
class __$$_SplitFormStateCopyWithImpl<$Res>
    extends _$SplitFormStateCopyWithImpl<$Res, _$_SplitFormState>
    implements _$$_SplitFormStateCopyWith<$Res> {
  __$$_SplitFormStateCopyWithImpl(
      _$_SplitFormState _value, $Res Function(_$_SplitFormState) _then)
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
    return _then(_$_SplitFormState(
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

class _$_SplitFormState implements _SplitFormState {
  const _$_SplitFormState(
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
            other is _$_SplitFormState &&
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
  _$$_SplitFormStateCopyWith<_$_SplitFormState> get copyWith =>
      __$$_SplitFormStateCopyWithImpl<_$_SplitFormState>(this, _$identity);
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
          saveFailureOrSuccessOption}) = _$_SplitFormState;

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
  _$$_SplitFormStateCopyWith<_$_SplitFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

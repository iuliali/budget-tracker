// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expenses_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExpensesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpenseId expenseId) deleteExpense,
    required TResult Function() getExpenses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseId expenseId)? deleteExpense,
    TResult? Function()? getExpenses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseId expenseId)? deleteExpense,
    TResult Function()? getExpenses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteExpense value) deleteExpense,
    required TResult Function(_GetExpenses value) getExpenses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteExpense value)? deleteExpense,
    TResult? Function(_GetExpenses value)? getExpenses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteExpense value)? deleteExpense,
    TResult Function(_GetExpenses value)? getExpenses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpensesEventCopyWith<$Res> {
  factory $ExpensesEventCopyWith(
          ExpensesEvent value, $Res Function(ExpensesEvent) then) =
      _$ExpensesEventCopyWithImpl<$Res, ExpensesEvent>;
}

/// @nodoc
class _$ExpensesEventCopyWithImpl<$Res, $Val extends ExpensesEvent>
    implements $ExpensesEventCopyWith<$Res> {
  _$ExpensesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_DeleteExpenseCopyWith<$Res> {
  factory _$$_DeleteExpenseCopyWith(
          _$_DeleteExpense value, $Res Function(_$_DeleteExpense) then) =
      __$$_DeleteExpenseCopyWithImpl<$Res>;
  @useResult
  $Res call({ExpenseId expenseId});
}

/// @nodoc
class __$$_DeleteExpenseCopyWithImpl<$Res>
    extends _$ExpensesEventCopyWithImpl<$Res, _$_DeleteExpense>
    implements _$$_DeleteExpenseCopyWith<$Res> {
  __$$_DeleteExpenseCopyWithImpl(
      _$_DeleteExpense _value, $Res Function(_$_DeleteExpense) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenseId = null,
  }) {
    return _then(_$_DeleteExpense(
      null == expenseId
          ? _value.expenseId
          : expenseId // ignore: cast_nullable_to_non_nullable
              as ExpenseId,
    ));
  }
}

/// @nodoc

class _$_DeleteExpense implements _DeleteExpense {
  const _$_DeleteExpense(this.expenseId);

  @override
  final ExpenseId expenseId;

  @override
  String toString() {
    return 'ExpensesEvent.deleteExpense(expenseId: $expenseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteExpense &&
            (identical(other.expenseId, expenseId) ||
                other.expenseId == expenseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expenseId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteExpenseCopyWith<_$_DeleteExpense> get copyWith =>
      __$$_DeleteExpenseCopyWithImpl<_$_DeleteExpense>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpenseId expenseId) deleteExpense,
    required TResult Function() getExpenses,
  }) {
    return deleteExpense(expenseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseId expenseId)? deleteExpense,
    TResult? Function()? getExpenses,
  }) {
    return deleteExpense?.call(expenseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseId expenseId)? deleteExpense,
    TResult Function()? getExpenses,
    required TResult orElse(),
  }) {
    if (deleteExpense != null) {
      return deleteExpense(expenseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteExpense value) deleteExpense,
    required TResult Function(_GetExpenses value) getExpenses,
  }) {
    return deleteExpense(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteExpense value)? deleteExpense,
    TResult? Function(_GetExpenses value)? getExpenses,
  }) {
    return deleteExpense?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteExpense value)? deleteExpense,
    TResult Function(_GetExpenses value)? getExpenses,
    required TResult orElse(),
  }) {
    if (deleteExpense != null) {
      return deleteExpense(this);
    }
    return orElse();
  }
}

abstract class _DeleteExpense implements ExpensesEvent {
  const factory _DeleteExpense(final ExpenseId expenseId) = _$_DeleteExpense;

  ExpenseId get expenseId;
  @JsonKey(ignore: true)
  _$$_DeleteExpenseCopyWith<_$_DeleteExpense> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetExpensesCopyWith<$Res> {
  factory _$$_GetExpensesCopyWith(
          _$_GetExpenses value, $Res Function(_$_GetExpenses) then) =
      __$$_GetExpensesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetExpensesCopyWithImpl<$Res>
    extends _$ExpensesEventCopyWithImpl<$Res, _$_GetExpenses>
    implements _$$_GetExpensesCopyWith<$Res> {
  __$$_GetExpensesCopyWithImpl(
      _$_GetExpenses _value, $Res Function(_$_GetExpenses) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetExpenses implements _GetExpenses {
  const _$_GetExpenses();

  @override
  String toString() {
    return 'ExpensesEvent.getExpenses()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetExpenses);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpenseId expenseId) deleteExpense,
    required TResult Function() getExpenses,
  }) {
    return getExpenses();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseId expenseId)? deleteExpense,
    TResult? Function()? getExpenses,
  }) {
    return getExpenses?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseId expenseId)? deleteExpense,
    TResult Function()? getExpenses,
    required TResult orElse(),
  }) {
    if (getExpenses != null) {
      return getExpenses();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteExpense value) deleteExpense,
    required TResult Function(_GetExpenses value) getExpenses,
  }) {
    return getExpenses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteExpense value)? deleteExpense,
    TResult? Function(_GetExpenses value)? getExpenses,
  }) {
    return getExpenses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteExpense value)? deleteExpense,
    TResult Function(_GetExpenses value)? getExpenses,
    required TResult orElse(),
  }) {
    if (getExpenses != null) {
      return getExpenses(this);
    }
    return orElse();
  }
}

abstract class _GetExpenses implements ExpensesEvent {
  const factory _GetExpenses() = _$_GetExpenses;
}

/// @nodoc
mixin _$ExpensesState {
  Option<Either<ExpenseFailure, List<Expense>>> get failureOrExpenses =>
      throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  bool get isDeleting => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpensesStateCopyWith<ExpensesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpensesStateCopyWith<$Res> {
  factory $ExpensesStateCopyWith(
          ExpensesState value, $Res Function(ExpensesState) then) =
      _$ExpensesStateCopyWithImpl<$Res, ExpensesState>;
  @useResult
  $Res call(
      {Option<Either<ExpenseFailure, List<Expense>>> failureOrExpenses,
      bool showErrorMessages,
      bool isFetching,
      bool isDeleting});
}

/// @nodoc
class _$ExpensesStateCopyWithImpl<$Res, $Val extends ExpensesState>
    implements $ExpensesStateCopyWith<$Res> {
  _$ExpensesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrExpenses = null,
    Object? showErrorMessages = null,
    Object? isFetching = null,
    Object? isDeleting = null,
  }) {
    return _then(_value.copyWith(
      failureOrExpenses: null == failureOrExpenses
          ? _value.failureOrExpenses
          : failureOrExpenses // ignore: cast_nullable_to_non_nullable
              as Option<Either<ExpenseFailure, List<Expense>>>,
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
abstract class _$$_ExpensesListStateCopyWith<$Res>
    implements $ExpensesStateCopyWith<$Res> {
  factory _$$_ExpensesListStateCopyWith(_$_ExpensesListState value,
          $Res Function(_$_ExpensesListState) then) =
      __$$_ExpensesListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Either<ExpenseFailure, List<Expense>>> failureOrExpenses,
      bool showErrorMessages,
      bool isFetching,
      bool isDeleting});
}

/// @nodoc
class __$$_ExpensesListStateCopyWithImpl<$Res>
    extends _$ExpensesStateCopyWithImpl<$Res, _$_ExpensesListState>
    implements _$$_ExpensesListStateCopyWith<$Res> {
  __$$_ExpensesListStateCopyWithImpl(
      _$_ExpensesListState _value, $Res Function(_$_ExpensesListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrExpenses = null,
    Object? showErrorMessages = null,
    Object? isFetching = null,
    Object? isDeleting = null,
  }) {
    return _then(_$_ExpensesListState(
      failureOrExpenses: null == failureOrExpenses
          ? _value.failureOrExpenses
          : failureOrExpenses // ignore: cast_nullable_to_non_nullable
              as Option<Either<ExpenseFailure, List<Expense>>>,
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

class _$_ExpensesListState implements _ExpensesListState {
  const _$_ExpensesListState(
      {required this.failureOrExpenses,
      required this.showErrorMessages,
      required this.isFetching,
      required this.isDeleting});

  @override
  final Option<Either<ExpenseFailure, List<Expense>>> failureOrExpenses;
  @override
  final bool showErrorMessages;
  @override
  final bool isFetching;
  @override
  final bool isDeleting;

  @override
  String toString() {
    return 'ExpensesState(failureOrExpenses: $failureOrExpenses, showErrorMessages: $showErrorMessages, isFetching: $isFetching, isDeleting: $isDeleting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExpensesListState &&
            (identical(other.failureOrExpenses, failureOrExpenses) ||
                other.failureOrExpenses == failureOrExpenses) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.isDeleting, isDeleting) ||
                other.isDeleting == isDeleting));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrExpenses,
      showErrorMessages, isFetching, isDeleting);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExpensesListStateCopyWith<_$_ExpensesListState> get copyWith =>
      __$$_ExpensesListStateCopyWithImpl<_$_ExpensesListState>(
          this, _$identity);
}

abstract class _ExpensesListState implements ExpensesState {
  const factory _ExpensesListState(
      {required final Option<Either<ExpenseFailure, List<Expense>>>
          failureOrExpenses,
      required final bool showErrorMessages,
      required final bool isFetching,
      required final bool isDeleting}) = _$_ExpensesListState;

  @override
  Option<Either<ExpenseFailure, List<Expense>>> get failureOrExpenses;
  @override
  bool get showErrorMessages;
  @override
  bool get isFetching;
  @override
  bool get isDeleting;
  @override
  @JsonKey(ignore: true)
  _$$_ExpensesListStateCopyWith<_$_ExpensesListState> get copyWith =>
      throw _privateConstructorUsedError;
}

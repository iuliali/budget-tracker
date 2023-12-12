// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'incomes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IncomesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IncomeId incomeId) deleteIncome,
    required TResult Function() getIncomes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IncomeId incomeId)? deleteIncome,
    TResult? Function()? getIncomes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IncomeId incomeId)? deleteIncome,
    TResult Function()? getIncomes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteIncome value) deleteIncome,
    required TResult Function(_GetIncomes value) getIncomes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteIncome value)? deleteIncome,
    TResult? Function(_GetIncomes value)? getIncomes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteIncome value)? deleteIncome,
    TResult Function(_GetIncomes value)? getIncomes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomesEventCopyWith<$Res> {
  factory $IncomesEventCopyWith(
          IncomesEvent value, $Res Function(IncomesEvent) then) =
      _$IncomesEventCopyWithImpl<$Res, IncomesEvent>;
}

/// @nodoc
class _$IncomesEventCopyWithImpl<$Res, $Val extends IncomesEvent>
    implements $IncomesEventCopyWith<$Res> {
  _$IncomesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DeleteIncomeImplCopyWith<$Res> {
  factory _$$DeleteIncomeImplCopyWith(
          _$DeleteIncomeImpl value, $Res Function(_$DeleteIncomeImpl) then) =
      __$$DeleteIncomeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({IncomeId incomeId});
}

/// @nodoc
class __$$DeleteIncomeImplCopyWithImpl<$Res>
    extends _$IncomesEventCopyWithImpl<$Res, _$DeleteIncomeImpl>
    implements _$$DeleteIncomeImplCopyWith<$Res> {
  __$$DeleteIncomeImplCopyWithImpl(
      _$DeleteIncomeImpl _value, $Res Function(_$DeleteIncomeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? incomeId = null,
  }) {
    return _then(_$DeleteIncomeImpl(
      null == incomeId
          ? _value.incomeId
          : incomeId // ignore: cast_nullable_to_non_nullable
              as IncomeId,
    ));
  }
}

/// @nodoc

class _$DeleteIncomeImpl implements _DeleteIncome {
  const _$DeleteIncomeImpl(this.incomeId);

  @override
  final IncomeId incomeId;

  @override
  String toString() {
    return 'IncomesEvent.deleteIncome(incomeId: $incomeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteIncomeImpl &&
            (identical(other.incomeId, incomeId) ||
                other.incomeId == incomeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, incomeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteIncomeImplCopyWith<_$DeleteIncomeImpl> get copyWith =>
      __$$DeleteIncomeImplCopyWithImpl<_$DeleteIncomeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IncomeId incomeId) deleteIncome,
    required TResult Function() getIncomes,
  }) {
    return deleteIncome(incomeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IncomeId incomeId)? deleteIncome,
    TResult? Function()? getIncomes,
  }) {
    return deleteIncome?.call(incomeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IncomeId incomeId)? deleteIncome,
    TResult Function()? getIncomes,
    required TResult orElse(),
  }) {
    if (deleteIncome != null) {
      return deleteIncome(incomeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteIncome value) deleteIncome,
    required TResult Function(_GetIncomes value) getIncomes,
  }) {
    return deleteIncome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteIncome value)? deleteIncome,
    TResult? Function(_GetIncomes value)? getIncomes,
  }) {
    return deleteIncome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteIncome value)? deleteIncome,
    TResult Function(_GetIncomes value)? getIncomes,
    required TResult orElse(),
  }) {
    if (deleteIncome != null) {
      return deleteIncome(this);
    }
    return orElse();
  }
}

abstract class _DeleteIncome implements IncomesEvent {
  const factory _DeleteIncome(final IncomeId incomeId) = _$DeleteIncomeImpl;

  IncomeId get incomeId;
  @JsonKey(ignore: true)
  _$$DeleteIncomeImplCopyWith<_$DeleteIncomeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetIncomesImplCopyWith<$Res> {
  factory _$$GetIncomesImplCopyWith(
          _$GetIncomesImpl value, $Res Function(_$GetIncomesImpl) then) =
      __$$GetIncomesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetIncomesImplCopyWithImpl<$Res>
    extends _$IncomesEventCopyWithImpl<$Res, _$GetIncomesImpl>
    implements _$$GetIncomesImplCopyWith<$Res> {
  __$$GetIncomesImplCopyWithImpl(
      _$GetIncomesImpl _value, $Res Function(_$GetIncomesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetIncomesImpl implements _GetIncomes {
  const _$GetIncomesImpl();

  @override
  String toString() {
    return 'IncomesEvent.getIncomes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetIncomesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IncomeId incomeId) deleteIncome,
    required TResult Function() getIncomes,
  }) {
    return getIncomes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IncomeId incomeId)? deleteIncome,
    TResult? Function()? getIncomes,
  }) {
    return getIncomes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IncomeId incomeId)? deleteIncome,
    TResult Function()? getIncomes,
    required TResult orElse(),
  }) {
    if (getIncomes != null) {
      return getIncomes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteIncome value) deleteIncome,
    required TResult Function(_GetIncomes value) getIncomes,
  }) {
    return getIncomes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteIncome value)? deleteIncome,
    TResult? Function(_GetIncomes value)? getIncomes,
  }) {
    return getIncomes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteIncome value)? deleteIncome,
    TResult Function(_GetIncomes value)? getIncomes,
    required TResult orElse(),
  }) {
    if (getIncomes != null) {
      return getIncomes(this);
    }
    return orElse();
  }
}

abstract class _GetIncomes implements IncomesEvent {
  const factory _GetIncomes() = _$GetIncomesImpl;
}

/// @nodoc
mixin _$IncomesState {
  Option<Either<IncomeFailure, List<Income>>> get failureOrIncomes =>
      throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  bool get isDeleting => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IncomesStateCopyWith<IncomesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomesStateCopyWith<$Res> {
  factory $IncomesStateCopyWith(
          IncomesState value, $Res Function(IncomesState) then) =
      _$IncomesStateCopyWithImpl<$Res, IncomesState>;
  @useResult
  $Res call(
      {Option<Either<IncomeFailure, List<Income>>> failureOrIncomes,
      bool showErrorMessages,
      bool isFetching,
      bool isDeleting});
}

/// @nodoc
class _$IncomesStateCopyWithImpl<$Res, $Val extends IncomesState>
    implements $IncomesStateCopyWith<$Res> {
  _$IncomesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrIncomes = null,
    Object? showErrorMessages = null,
    Object? isFetching = null,
    Object? isDeleting = null,
  }) {
    return _then(_value.copyWith(
      failureOrIncomes: null == failureOrIncomes
          ? _value.failureOrIncomes
          : failureOrIncomes // ignore: cast_nullable_to_non_nullable
              as Option<Either<IncomeFailure, List<Income>>>,
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
abstract class _$$IncomesListStateImplCopyWith<$Res>
    implements $IncomesStateCopyWith<$Res> {
  factory _$$IncomesListStateImplCopyWith(_$IncomesListStateImpl value,
          $Res Function(_$IncomesListStateImpl) then) =
      __$$IncomesListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Either<IncomeFailure, List<Income>>> failureOrIncomes,
      bool showErrorMessages,
      bool isFetching,
      bool isDeleting});
}

/// @nodoc
class __$$IncomesListStateImplCopyWithImpl<$Res>
    extends _$IncomesStateCopyWithImpl<$Res, _$IncomesListStateImpl>
    implements _$$IncomesListStateImplCopyWith<$Res> {
  __$$IncomesListStateImplCopyWithImpl(_$IncomesListStateImpl _value,
      $Res Function(_$IncomesListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrIncomes = null,
    Object? showErrorMessages = null,
    Object? isFetching = null,
    Object? isDeleting = null,
  }) {
    return _then(_$IncomesListStateImpl(
      failureOrIncomes: null == failureOrIncomes
          ? _value.failureOrIncomes
          : failureOrIncomes // ignore: cast_nullable_to_non_nullable
              as Option<Either<IncomeFailure, List<Income>>>,
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

class _$IncomesListStateImpl implements _IncomesListState {
  const _$IncomesListStateImpl(
      {required this.failureOrIncomes,
      required this.showErrorMessages,
      required this.isFetching,
      required this.isDeleting});

  @override
  final Option<Either<IncomeFailure, List<Income>>> failureOrIncomes;
  @override
  final bool showErrorMessages;
  @override
  final bool isFetching;
  @override
  final bool isDeleting;

  @override
  String toString() {
    return 'IncomesState(failureOrIncomes: $failureOrIncomes, showErrorMessages: $showErrorMessages, isFetching: $isFetching, isDeleting: $isDeleting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncomesListStateImpl &&
            (identical(other.failureOrIncomes, failureOrIncomes) ||
                other.failureOrIncomes == failureOrIncomes) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.isDeleting, isDeleting) ||
                other.isDeleting == isDeleting));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, failureOrIncomes, showErrorMessages, isFetching, isDeleting);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IncomesListStateImplCopyWith<_$IncomesListStateImpl> get copyWith =>
      __$$IncomesListStateImplCopyWithImpl<_$IncomesListStateImpl>(
          this, _$identity);
}

abstract class _IncomesListState implements IncomesState {
  const factory _IncomesListState(
      {required final Option<Either<IncomeFailure, List<Income>>>
          failureOrIncomes,
      required final bool showErrorMessages,
      required final bool isFetching,
      required final bool isDeleting}) = _$IncomesListStateImpl;

  @override
  Option<Either<IncomeFailure, List<Income>>> get failureOrIncomes;
  @override
  bool get showErrorMessages;
  @override
  bool get isFetching;
  @override
  bool get isDeleting;
  @override
  @JsonKey(ignore: true)
  _$$IncomesListStateImplCopyWith<_$IncomesListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

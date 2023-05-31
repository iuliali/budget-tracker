// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExpenseFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Expense> initialExpenseOption) initialized,
    required TResult Function(String recipientStr) recipientChanged,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String currencyStr) currencyChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Expense> initialExpenseOption)? initialized,
    TResult? Function(String recipientStr)? recipientChanged,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(String currencyStr)? currencyChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Expense> initialExpenseOption)? initialized,
    TResult Function(String recipientStr)? recipientChanged,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String currencyStr)? currencyChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_RecipientChanged value) recipientChanged,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_CurrencyChanged value) currencyChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_RecipientChanged value)? recipientChanged,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_CurrencyChanged value)? currencyChanged,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_RecipientChanged value)? recipientChanged,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_CurrencyChanged value)? currencyChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseFormEventCopyWith<$Res> {
  factory $ExpenseFormEventCopyWith(
          ExpenseFormEvent value, $Res Function(ExpenseFormEvent) then) =
      _$ExpenseFormEventCopyWithImpl<$Res, ExpenseFormEvent>;
}

/// @nodoc
class _$ExpenseFormEventCopyWithImpl<$Res, $Val extends ExpenseFormEvent>
    implements $ExpenseFormEventCopyWith<$Res> {
  _$ExpenseFormEventCopyWithImpl(this._value, this._then);

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
  $Res call({Option<Expense> initialExpenseOption});
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$ExpenseFormEventCopyWithImpl<$Res, _$_Initialized>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialExpenseOption = null,
  }) {
    return _then(_$_Initialized(
      null == initialExpenseOption
          ? _value.initialExpenseOption
          : initialExpenseOption // ignore: cast_nullable_to_non_nullable
              as Option<Expense>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialExpenseOption);

  @override
  final Option<Expense> initialExpenseOption;

  @override
  String toString() {
    return 'ExpenseFormEvent.initialized(initialExpenseOption: $initialExpenseOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
            (identical(other.initialExpenseOption, initialExpenseOption) ||
                other.initialExpenseOption == initialExpenseOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialExpenseOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Expense> initialExpenseOption) initialized,
    required TResult Function(String recipientStr) recipientChanged,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String currencyStr) currencyChanged,
    required TResult Function() saved,
  }) {
    return initialized(initialExpenseOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Expense> initialExpenseOption)? initialized,
    TResult? Function(String recipientStr)? recipientChanged,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(String currencyStr)? currencyChanged,
    TResult? Function()? saved,
  }) {
    return initialized?.call(initialExpenseOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Expense> initialExpenseOption)? initialized,
    TResult Function(String recipientStr)? recipientChanged,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String currencyStr)? currencyChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialExpenseOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_RecipientChanged value) recipientChanged,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_CurrencyChanged value) currencyChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_RecipientChanged value)? recipientChanged,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_CurrencyChanged value)? currencyChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_RecipientChanged value)? recipientChanged,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_CurrencyChanged value)? currencyChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ExpenseFormEvent {
  const factory _Initialized(final Option<Expense> initialExpenseOption) =
      _$_Initialized;

  Option<Expense> get initialExpenseOption;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RecipientChangedCopyWith<$Res> {
  factory _$$_RecipientChangedCopyWith(
          _$_RecipientChanged value, $Res Function(_$_RecipientChanged) then) =
      __$$_RecipientChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String recipientStr});
}

/// @nodoc
class __$$_RecipientChangedCopyWithImpl<$Res>
    extends _$ExpenseFormEventCopyWithImpl<$Res, _$_RecipientChanged>
    implements _$$_RecipientChangedCopyWith<$Res> {
  __$$_RecipientChangedCopyWithImpl(
      _$_RecipientChanged _value, $Res Function(_$_RecipientChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipientStr = null,
  }) {
    return _then(_$_RecipientChanged(
      null == recipientStr
          ? _value.recipientStr
          : recipientStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RecipientChanged implements _RecipientChanged {
  const _$_RecipientChanged(this.recipientStr);

  @override
  final String recipientStr;

  @override
  String toString() {
    return 'ExpenseFormEvent.recipientChanged(recipientStr: $recipientStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipientChanged &&
            (identical(other.recipientStr, recipientStr) ||
                other.recipientStr == recipientStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipientStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipientChangedCopyWith<_$_RecipientChanged> get copyWith =>
      __$$_RecipientChangedCopyWithImpl<_$_RecipientChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Expense> initialExpenseOption) initialized,
    required TResult Function(String recipientStr) recipientChanged,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String currencyStr) currencyChanged,
    required TResult Function() saved,
  }) {
    return recipientChanged(recipientStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Expense> initialExpenseOption)? initialized,
    TResult? Function(String recipientStr)? recipientChanged,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(String currencyStr)? currencyChanged,
    TResult? Function()? saved,
  }) {
    return recipientChanged?.call(recipientStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Expense> initialExpenseOption)? initialized,
    TResult Function(String recipientStr)? recipientChanged,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String currencyStr)? currencyChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (recipientChanged != null) {
      return recipientChanged(recipientStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_RecipientChanged value) recipientChanged,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_CurrencyChanged value) currencyChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return recipientChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_RecipientChanged value)? recipientChanged,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_CurrencyChanged value)? currencyChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return recipientChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_RecipientChanged value)? recipientChanged,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_CurrencyChanged value)? currencyChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (recipientChanged != null) {
      return recipientChanged(this);
    }
    return orElse();
  }
}

abstract class _RecipientChanged implements ExpenseFormEvent {
  const factory _RecipientChanged(final String recipientStr) =
      _$_RecipientChanged;

  String get recipientStr;
  @JsonKey(ignore: true)
  _$$_RecipientChangedCopyWith<_$_RecipientChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AmountChangedCopyWith<$Res> {
  factory _$$_AmountChangedCopyWith(
          _$_AmountChanged value, $Res Function(_$_AmountChanged) then) =
      __$$_AmountChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String amountStr});
}

/// @nodoc
class __$$_AmountChangedCopyWithImpl<$Res>
    extends _$ExpenseFormEventCopyWithImpl<$Res, _$_AmountChanged>
    implements _$$_AmountChangedCopyWith<$Res> {
  __$$_AmountChangedCopyWithImpl(
      _$_AmountChanged _value, $Res Function(_$_AmountChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountStr = null,
  }) {
    return _then(_$_AmountChanged(
      null == amountStr
          ? _value.amountStr
          : amountStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AmountChanged implements _AmountChanged {
  const _$_AmountChanged(this.amountStr);

  @override
  final String amountStr;

  @override
  String toString() {
    return 'ExpenseFormEvent.amountChanged(amountStr: $amountStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AmountChanged &&
            (identical(other.amountStr, amountStr) ||
                other.amountStr == amountStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amountStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AmountChangedCopyWith<_$_AmountChanged> get copyWith =>
      __$$_AmountChangedCopyWithImpl<_$_AmountChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Expense> initialExpenseOption) initialized,
    required TResult Function(String recipientStr) recipientChanged,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String currencyStr) currencyChanged,
    required TResult Function() saved,
  }) {
    return amountChanged(amountStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Expense> initialExpenseOption)? initialized,
    TResult? Function(String recipientStr)? recipientChanged,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(String currencyStr)? currencyChanged,
    TResult? Function()? saved,
  }) {
    return amountChanged?.call(amountStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Expense> initialExpenseOption)? initialized,
    TResult Function(String recipientStr)? recipientChanged,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String currencyStr)? currencyChanged,
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
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_RecipientChanged value) recipientChanged,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_CurrencyChanged value) currencyChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return amountChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_RecipientChanged value)? recipientChanged,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_CurrencyChanged value)? currencyChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return amountChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_RecipientChanged value)? recipientChanged,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_CurrencyChanged value)? currencyChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (amountChanged != null) {
      return amountChanged(this);
    }
    return orElse();
  }
}

abstract class _AmountChanged implements ExpenseFormEvent {
  const factory _AmountChanged(final String amountStr) = _$_AmountChanged;

  String get amountStr;
  @JsonKey(ignore: true)
  _$$_AmountChangedCopyWith<_$_AmountChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CurrencyChangedCopyWith<$Res> {
  factory _$$_CurrencyChangedCopyWith(
          _$_CurrencyChanged value, $Res Function(_$_CurrencyChanged) then) =
      __$$_CurrencyChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String currencyStr});
}

/// @nodoc
class __$$_CurrencyChangedCopyWithImpl<$Res>
    extends _$ExpenseFormEventCopyWithImpl<$Res, _$_CurrencyChanged>
    implements _$$_CurrencyChangedCopyWith<$Res> {
  __$$_CurrencyChangedCopyWithImpl(
      _$_CurrencyChanged _value, $Res Function(_$_CurrencyChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyStr = null,
  }) {
    return _then(_$_CurrencyChanged(
      null == currencyStr
          ? _value.currencyStr
          : currencyStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CurrencyChanged implements _CurrencyChanged {
  const _$_CurrencyChanged(this.currencyStr);

  @override
  final String currencyStr;

  @override
  String toString() {
    return 'ExpenseFormEvent.currencyChanged(currencyStr: $currencyStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrencyChanged &&
            (identical(other.currencyStr, currencyStr) ||
                other.currencyStr == currencyStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currencyStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrencyChangedCopyWith<_$_CurrencyChanged> get copyWith =>
      __$$_CurrencyChangedCopyWithImpl<_$_CurrencyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Expense> initialExpenseOption) initialized,
    required TResult Function(String recipientStr) recipientChanged,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String currencyStr) currencyChanged,
    required TResult Function() saved,
  }) {
    return currencyChanged(currencyStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Expense> initialExpenseOption)? initialized,
    TResult? Function(String recipientStr)? recipientChanged,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(String currencyStr)? currencyChanged,
    TResult? Function()? saved,
  }) {
    return currencyChanged?.call(currencyStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Expense> initialExpenseOption)? initialized,
    TResult Function(String recipientStr)? recipientChanged,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String currencyStr)? currencyChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (currencyChanged != null) {
      return currencyChanged(currencyStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_RecipientChanged value) recipientChanged,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_CurrencyChanged value) currencyChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return currencyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_RecipientChanged value)? recipientChanged,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_CurrencyChanged value)? currencyChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return currencyChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_RecipientChanged value)? recipientChanged,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_CurrencyChanged value)? currencyChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (currencyChanged != null) {
      return currencyChanged(this);
    }
    return orElse();
  }
}

abstract class _CurrencyChanged implements ExpenseFormEvent {
  const factory _CurrencyChanged(final String currencyStr) = _$_CurrencyChanged;

  String get currencyStr;
  @JsonKey(ignore: true)
  _$$_CurrencyChangedCopyWith<_$_CurrencyChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SavedCopyWith<$Res> {
  factory _$$_SavedCopyWith(_$_Saved value, $Res Function(_$_Saved) then) =
      __$$_SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedCopyWithImpl<$Res>
    extends _$ExpenseFormEventCopyWithImpl<$Res, _$_Saved>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'ExpenseFormEvent.saved()';
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
    required TResult Function(Option<Expense> initialExpenseOption) initialized,
    required TResult Function(String recipientStr) recipientChanged,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String currencyStr) currencyChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Expense> initialExpenseOption)? initialized,
    TResult? Function(String recipientStr)? recipientChanged,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(String currencyStr)? currencyChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Expense> initialExpenseOption)? initialized,
    TResult Function(String recipientStr)? recipientChanged,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String currencyStr)? currencyChanged,
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
    required TResult Function(_RecipientChanged value) recipientChanged,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_CurrencyChanged value) currencyChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_RecipientChanged value)? recipientChanged,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_CurrencyChanged value)? currencyChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_RecipientChanged value)? recipientChanged,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_CurrencyChanged value)? currencyChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements ExpenseFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
mixin _$ExpenseFormState {
  Option<Expense> get expense => throw _privateConstructorUsedError;
  TransactionRecipient get recipient => throw _privateConstructorUsedError;
  TransactionAmount get amount => throw _privateConstructorUsedError;
  TransactionCurrency get currency => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  Option<Either<ExpenseFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpenseFormStateCopyWith<ExpenseFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseFormStateCopyWith<$Res> {
  factory $ExpenseFormStateCopyWith(
          ExpenseFormState value, $Res Function(ExpenseFormState) then) =
      _$ExpenseFormStateCopyWithImpl<$Res, ExpenseFormState>;
  @useResult
  $Res call(
      {Option<Expense> expense,
      TransactionRecipient recipient,
      TransactionAmount amount,
      TransactionCurrency currency,
      bool showErrorMessages,
      bool isSaving,
      bool isEditing,
      Option<Either<ExpenseFailure, Unit>> saveFailureOrSuccessOption});
}

/// @nodoc
class _$ExpenseFormStateCopyWithImpl<$Res, $Val extends ExpenseFormState>
    implements $ExpenseFormStateCopyWith<$Res> {
  _$ExpenseFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expense = null,
    Object? recipient = null,
    Object? amount = null,
    Object? currency = null,
    Object? showErrorMessages = null,
    Object? isSaving = null,
    Object? isEditing = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      expense: null == expense
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as Option<Expense>,
      recipient: null == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as TransactionRecipient,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as TransactionAmount,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as TransactionCurrency,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ExpenseFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExpenseFormStateCopyWith<$Res>
    implements $ExpenseFormStateCopyWith<$Res> {
  factory _$$_ExpenseFormStateCopyWith(
          _$_ExpenseFormState value, $Res Function(_$_ExpenseFormState) then) =
      __$$_ExpenseFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Expense> expense,
      TransactionRecipient recipient,
      TransactionAmount amount,
      TransactionCurrency currency,
      bool showErrorMessages,
      bool isSaving,
      bool isEditing,
      Option<Either<ExpenseFailure, Unit>> saveFailureOrSuccessOption});
}

/// @nodoc
class __$$_ExpenseFormStateCopyWithImpl<$Res>
    extends _$ExpenseFormStateCopyWithImpl<$Res, _$_ExpenseFormState>
    implements _$$_ExpenseFormStateCopyWith<$Res> {
  __$$_ExpenseFormStateCopyWithImpl(
      _$_ExpenseFormState _value, $Res Function(_$_ExpenseFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expense = null,
    Object? recipient = null,
    Object? amount = null,
    Object? currency = null,
    Object? showErrorMessages = null,
    Object? isSaving = null,
    Object? isEditing = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_$_ExpenseFormState(
      expense: null == expense
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as Option<Expense>,
      recipient: null == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as TransactionRecipient,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as TransactionAmount,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as TransactionCurrency,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ExpenseFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_ExpenseFormState implements _ExpenseFormState {
  const _$_ExpenseFormState(
      {required this.expense,
      required this.recipient,
      required this.amount,
      required this.currency,
      required this.showErrorMessages,
      required this.isSaving,
      required this.isEditing,
      required this.saveFailureOrSuccessOption});

  @override
  final Option<Expense> expense;
  @override
  final TransactionRecipient recipient;
  @override
  final TransactionAmount amount;
  @override
  final TransactionCurrency currency;
  @override
  final bool showErrorMessages;
  @override
  final bool isSaving;
  @override
  final bool isEditing;
  @override
  final Option<Either<ExpenseFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'ExpenseFormState(expense: $expense, recipient: $recipient, amount: $amount, currency: $currency, showErrorMessages: $showErrorMessages, isSaving: $isSaving, isEditing: $isEditing, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExpenseFormState &&
            (identical(other.expense, expense) || other.expense == expense) &&
            (identical(other.recipient, recipient) ||
                other.recipient == recipient) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                other.saveFailureOrSuccessOption ==
                    saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      expense,
      recipient,
      amount,
      currency,
      showErrorMessages,
      isSaving,
      isEditing,
      saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExpenseFormStateCopyWith<_$_ExpenseFormState> get copyWith =>
      __$$_ExpenseFormStateCopyWithImpl<_$_ExpenseFormState>(this, _$identity);
}

abstract class _ExpenseFormState implements ExpenseFormState {
  const factory _ExpenseFormState(
      {required final Option<Expense> expense,
      required final TransactionRecipient recipient,
      required final TransactionAmount amount,
      required final TransactionCurrency currency,
      required final bool showErrorMessages,
      required final bool isSaving,
      required final bool isEditing,
      required final Option<Either<ExpenseFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_ExpenseFormState;

  @override
  Option<Expense> get expense;
  @override
  TransactionRecipient get recipient;
  @override
  TransactionAmount get amount;
  @override
  TransactionCurrency get currency;
  @override
  bool get showErrorMessages;
  @override
  bool get isSaving;
  @override
  bool get isEditing;
  @override
  Option<Either<ExpenseFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_ExpenseFormStateCopyWith<_$_ExpenseFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

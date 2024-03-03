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
    required TResult Function(CategoryId categoryId) categoryIdChanged,
    required TResult Function(String recipientStr) recipientChanged,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String currencyStr) currencyChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Expense> initialExpenseOption)? initialized,
    TResult? Function(CategoryId categoryId)? categoryIdChanged,
    TResult? Function(String recipientStr)? recipientChanged,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(String currencyStr)? currencyChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Expense> initialExpenseOption)? initialized,
    TResult Function(CategoryId categoryId)? categoryIdChanged,
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
    required TResult Function(_CategoryIdChanged value) categoryIdChanged,
    required TResult Function(_RecipientChanged value) recipientChanged,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_CurrencyChanged value) currencyChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_CategoryIdChanged value)? categoryIdChanged,
    TResult? Function(_RecipientChanged value)? recipientChanged,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_CurrencyChanged value)? currencyChanged,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CategoryIdChanged value)? categoryIdChanged,
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
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<Expense> initialExpenseOption});
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$ExpenseFormEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialExpenseOption = null,
  }) {
    return _then(_$InitializedImpl(
      null == initialExpenseOption
          ? _value.initialExpenseOption
          : initialExpenseOption // ignore: cast_nullable_to_non_nullable
              as Option<Expense>,
    ));
  }
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl(this.initialExpenseOption);

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
            other is _$InitializedImpl &&
            (identical(other.initialExpenseOption, initialExpenseOption) ||
                other.initialExpenseOption == initialExpenseOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialExpenseOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Expense> initialExpenseOption) initialized,
    required TResult Function(CategoryId categoryId) categoryIdChanged,
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
    TResult? Function(CategoryId categoryId)? categoryIdChanged,
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
    TResult Function(CategoryId categoryId)? categoryIdChanged,
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
    required TResult Function(_CategoryIdChanged value) categoryIdChanged,
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
    TResult? Function(_CategoryIdChanged value)? categoryIdChanged,
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
    TResult Function(_CategoryIdChanged value)? categoryIdChanged,
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
      _$InitializedImpl;

  Option<Expense> get initialExpenseOption;
  @JsonKey(ignore: true)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryIdChangedImplCopyWith<$Res> {
  factory _$$CategoryIdChangedImplCopyWith(_$CategoryIdChangedImpl value,
          $Res Function(_$CategoryIdChangedImpl) then) =
      __$$CategoryIdChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CategoryId categoryId});
}

/// @nodoc
class __$$CategoryIdChangedImplCopyWithImpl<$Res>
    extends _$ExpenseFormEventCopyWithImpl<$Res, _$CategoryIdChangedImpl>
    implements _$$CategoryIdChangedImplCopyWith<$Res> {
  __$$CategoryIdChangedImplCopyWithImpl(_$CategoryIdChangedImpl _value,
      $Res Function(_$CategoryIdChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
  }) {
    return _then(_$CategoryIdChangedImpl(
      null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as CategoryId,
    ));
  }
}

/// @nodoc

class _$CategoryIdChangedImpl implements _CategoryIdChanged {
  const _$CategoryIdChangedImpl(this.categoryId);

  @override
  final CategoryId categoryId;

  @override
  String toString() {
    return 'ExpenseFormEvent.categoryIdChanged(categoryId: $categoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryIdChangedImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryIdChangedImplCopyWith<_$CategoryIdChangedImpl> get copyWith =>
      __$$CategoryIdChangedImplCopyWithImpl<_$CategoryIdChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Expense> initialExpenseOption) initialized,
    required TResult Function(CategoryId categoryId) categoryIdChanged,
    required TResult Function(String recipientStr) recipientChanged,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String currencyStr) currencyChanged,
    required TResult Function() saved,
  }) {
    return categoryIdChanged(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Expense> initialExpenseOption)? initialized,
    TResult? Function(CategoryId categoryId)? categoryIdChanged,
    TResult? Function(String recipientStr)? recipientChanged,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(String currencyStr)? currencyChanged,
    TResult? Function()? saved,
  }) {
    return categoryIdChanged?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Expense> initialExpenseOption)? initialized,
    TResult Function(CategoryId categoryId)? categoryIdChanged,
    TResult Function(String recipientStr)? recipientChanged,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String currencyStr)? currencyChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (categoryIdChanged != null) {
      return categoryIdChanged(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_CategoryIdChanged value) categoryIdChanged,
    required TResult Function(_RecipientChanged value) recipientChanged,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_CurrencyChanged value) currencyChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return categoryIdChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_CategoryIdChanged value)? categoryIdChanged,
    TResult? Function(_RecipientChanged value)? recipientChanged,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_CurrencyChanged value)? currencyChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return categoryIdChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CategoryIdChanged value)? categoryIdChanged,
    TResult Function(_RecipientChanged value)? recipientChanged,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_CurrencyChanged value)? currencyChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (categoryIdChanged != null) {
      return categoryIdChanged(this);
    }
    return orElse();
  }
}

abstract class _CategoryIdChanged implements ExpenseFormEvent {
  const factory _CategoryIdChanged(final CategoryId categoryId) =
      _$CategoryIdChangedImpl;

  CategoryId get categoryId;
  @JsonKey(ignore: true)
  _$$CategoryIdChangedImplCopyWith<_$CategoryIdChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecipientChangedImplCopyWith<$Res> {
  factory _$$RecipientChangedImplCopyWith(_$RecipientChangedImpl value,
          $Res Function(_$RecipientChangedImpl) then) =
      __$$RecipientChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String recipientStr});
}

/// @nodoc
class __$$RecipientChangedImplCopyWithImpl<$Res>
    extends _$ExpenseFormEventCopyWithImpl<$Res, _$RecipientChangedImpl>
    implements _$$RecipientChangedImplCopyWith<$Res> {
  __$$RecipientChangedImplCopyWithImpl(_$RecipientChangedImpl _value,
      $Res Function(_$RecipientChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipientStr = null,
  }) {
    return _then(_$RecipientChangedImpl(
      null == recipientStr
          ? _value.recipientStr
          : recipientStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RecipientChangedImpl implements _RecipientChanged {
  const _$RecipientChangedImpl(this.recipientStr);

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
            other is _$RecipientChangedImpl &&
            (identical(other.recipientStr, recipientStr) ||
                other.recipientStr == recipientStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipientStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipientChangedImplCopyWith<_$RecipientChangedImpl> get copyWith =>
      __$$RecipientChangedImplCopyWithImpl<_$RecipientChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Expense> initialExpenseOption) initialized,
    required TResult Function(CategoryId categoryId) categoryIdChanged,
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
    TResult? Function(CategoryId categoryId)? categoryIdChanged,
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
    TResult Function(CategoryId categoryId)? categoryIdChanged,
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
    required TResult Function(_CategoryIdChanged value) categoryIdChanged,
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
    TResult? Function(_CategoryIdChanged value)? categoryIdChanged,
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
    TResult Function(_CategoryIdChanged value)? categoryIdChanged,
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
      _$RecipientChangedImpl;

  String get recipientStr;
  @JsonKey(ignore: true)
  _$$RecipientChangedImplCopyWith<_$RecipientChangedImpl> get copyWith =>
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
    extends _$ExpenseFormEventCopyWithImpl<$Res, _$AmountChangedImpl>
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

class _$AmountChangedImpl implements _AmountChanged {
  const _$AmountChangedImpl(this.amountStr);

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
    required TResult Function(Option<Expense> initialExpenseOption) initialized,
    required TResult Function(CategoryId categoryId) categoryIdChanged,
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
    TResult? Function(CategoryId categoryId)? categoryIdChanged,
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
    TResult Function(CategoryId categoryId)? categoryIdChanged,
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
    required TResult Function(_CategoryIdChanged value) categoryIdChanged,
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
    TResult? Function(_CategoryIdChanged value)? categoryIdChanged,
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
    TResult Function(_CategoryIdChanged value)? categoryIdChanged,
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
  const factory _AmountChanged(final String amountStr) = _$AmountChangedImpl;

  String get amountStr;
  @JsonKey(ignore: true)
  _$$AmountChangedImplCopyWith<_$AmountChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CurrencyChangedImplCopyWith<$Res> {
  factory _$$CurrencyChangedImplCopyWith(_$CurrencyChangedImpl value,
          $Res Function(_$CurrencyChangedImpl) then) =
      __$$CurrencyChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String currencyStr});
}

/// @nodoc
class __$$CurrencyChangedImplCopyWithImpl<$Res>
    extends _$ExpenseFormEventCopyWithImpl<$Res, _$CurrencyChangedImpl>
    implements _$$CurrencyChangedImplCopyWith<$Res> {
  __$$CurrencyChangedImplCopyWithImpl(
      _$CurrencyChangedImpl _value, $Res Function(_$CurrencyChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyStr = null,
  }) {
    return _then(_$CurrencyChangedImpl(
      null == currencyStr
          ? _value.currencyStr
          : currencyStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CurrencyChangedImpl implements _CurrencyChanged {
  const _$CurrencyChangedImpl(this.currencyStr);

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
            other is _$CurrencyChangedImpl &&
            (identical(other.currencyStr, currencyStr) ||
                other.currencyStr == currencyStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currencyStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyChangedImplCopyWith<_$CurrencyChangedImpl> get copyWith =>
      __$$CurrencyChangedImplCopyWithImpl<_$CurrencyChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Expense> initialExpenseOption) initialized,
    required TResult Function(CategoryId categoryId) categoryIdChanged,
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
    TResult? Function(CategoryId categoryId)? categoryIdChanged,
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
    TResult Function(CategoryId categoryId)? categoryIdChanged,
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
    required TResult Function(_CategoryIdChanged value) categoryIdChanged,
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
    TResult? Function(_CategoryIdChanged value)? categoryIdChanged,
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
    TResult Function(_CategoryIdChanged value)? categoryIdChanged,
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
  const factory _CurrencyChanged(final String currencyStr) =
      _$CurrencyChangedImpl;

  String get currencyStr;
  @JsonKey(ignore: true)
  _$$CurrencyChangedImplCopyWith<_$CurrencyChangedImpl> get copyWith =>
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
    extends _$ExpenseFormEventCopyWithImpl<$Res, _$SavedImpl>
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
    return 'ExpenseFormEvent.saved()';
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
    required TResult Function(Option<Expense> initialExpenseOption) initialized,
    required TResult Function(CategoryId categoryId) categoryIdChanged,
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
    TResult? Function(CategoryId categoryId)? categoryIdChanged,
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
    TResult Function(CategoryId categoryId)? categoryIdChanged,
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
    required TResult Function(_CategoryIdChanged value) categoryIdChanged,
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
    TResult? Function(_CategoryIdChanged value)? categoryIdChanged,
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
    TResult Function(_CategoryIdChanged value)? categoryIdChanged,
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
  const factory _Saved() = _$SavedImpl;
}

/// @nodoc
mixin _$ExpenseFormState {
  Option<Expense> get expense => throw _privateConstructorUsedError;
  Option<CategoryId> get categoryId => throw _privateConstructorUsedError;
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
      Option<CategoryId> categoryId,
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
    Object? categoryId = null,
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
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as Option<CategoryId>,
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
abstract class _$$ExpenseFormStateImplCopyWith<$Res>
    implements $ExpenseFormStateCopyWith<$Res> {
  factory _$$ExpenseFormStateImplCopyWith(_$ExpenseFormStateImpl value,
          $Res Function(_$ExpenseFormStateImpl) then) =
      __$$ExpenseFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Expense> expense,
      Option<CategoryId> categoryId,
      TransactionRecipient recipient,
      TransactionAmount amount,
      TransactionCurrency currency,
      bool showErrorMessages,
      bool isSaving,
      bool isEditing,
      Option<Either<ExpenseFailure, Unit>> saveFailureOrSuccessOption});
}

/// @nodoc
class __$$ExpenseFormStateImplCopyWithImpl<$Res>
    extends _$ExpenseFormStateCopyWithImpl<$Res, _$ExpenseFormStateImpl>
    implements _$$ExpenseFormStateImplCopyWith<$Res> {
  __$$ExpenseFormStateImplCopyWithImpl(_$ExpenseFormStateImpl _value,
      $Res Function(_$ExpenseFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expense = null,
    Object? categoryId = null,
    Object? recipient = null,
    Object? amount = null,
    Object? currency = null,
    Object? showErrorMessages = null,
    Object? isSaving = null,
    Object? isEditing = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_$ExpenseFormStateImpl(
      expense: null == expense
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as Option<Expense>,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as Option<CategoryId>,
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

class _$ExpenseFormStateImpl implements _ExpenseFormState {
  const _$ExpenseFormStateImpl(
      {required this.expense,
      required this.categoryId,
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
  final Option<CategoryId> categoryId;
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
    return 'ExpenseFormState(expense: $expense, categoryId: $categoryId, recipient: $recipient, amount: $amount, currency: $currency, showErrorMessages: $showErrorMessages, isSaving: $isSaving, isEditing: $isEditing, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseFormStateImpl &&
            (identical(other.expense, expense) || other.expense == expense) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
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
      categoryId,
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
  _$$ExpenseFormStateImplCopyWith<_$ExpenseFormStateImpl> get copyWith =>
      __$$ExpenseFormStateImplCopyWithImpl<_$ExpenseFormStateImpl>(
          this, _$identity);
}

abstract class _ExpenseFormState implements ExpenseFormState {
  const factory _ExpenseFormState(
      {required final Option<Expense> expense,
      required final Option<CategoryId> categoryId,
      required final TransactionRecipient recipient,
      required final TransactionAmount amount,
      required final TransactionCurrency currency,
      required final bool showErrorMessages,
      required final bool isSaving,
      required final bool isEditing,
      required final Option<Either<ExpenseFailure, Unit>>
          saveFailureOrSuccessOption}) = _$ExpenseFormStateImpl;

  @override
  Option<Expense> get expense;
  @override
  Option<CategoryId> get categoryId;
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
  _$$ExpenseFormStateImplCopyWith<_$ExpenseFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

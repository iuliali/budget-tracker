// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'income_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IncomeFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Income> initialIncomeOption) initialized,
    required TResult Function(String senderStr) senderChanged,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String currencyStr) currencyChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Income> initialIncomeOption)? initialized,
    TResult? Function(String senderStr)? senderChanged,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(String currencyStr)? currencyChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Income> initialIncomeOption)? initialized,
    TResult Function(String senderStr)? senderChanged,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String currencyStr)? currencyChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SenderChanged value) senderChanged,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_CurrencyChanged value) currencyChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SenderChanged value)? senderChanged,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_CurrencyChanged value)? currencyChanged,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SenderChanged value)? senderChanged,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_CurrencyChanged value)? currencyChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomeFormEventCopyWith<$Res> {
  factory $IncomeFormEventCopyWith(
          IncomeFormEvent value, $Res Function(IncomeFormEvent) then) =
      _$IncomeFormEventCopyWithImpl<$Res, IncomeFormEvent>;
}

/// @nodoc
class _$IncomeFormEventCopyWithImpl<$Res, $Val extends IncomeFormEvent>
    implements $IncomeFormEventCopyWith<$Res> {
  _$IncomeFormEventCopyWithImpl(this._value, this._then);

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
  $Res call({Option<Income> initialIncomeOption});
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$IncomeFormEventCopyWithImpl<$Res, _$_Initialized>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialIncomeOption = null,
  }) {
    return _then(_$_Initialized(
      null == initialIncomeOption
          ? _value.initialIncomeOption
          : initialIncomeOption // ignore: cast_nullable_to_non_nullable
              as Option<Income>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialIncomeOption);

  @override
  final Option<Income> initialIncomeOption;

  @override
  String toString() {
    return 'IncomeFormEvent.initialized(initialIncomeOption: $initialIncomeOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
            (identical(other.initialIncomeOption, initialIncomeOption) ||
                other.initialIncomeOption == initialIncomeOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialIncomeOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Income> initialIncomeOption) initialized,
    required TResult Function(String senderStr) senderChanged,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String currencyStr) currencyChanged,
    required TResult Function() saved,
  }) {
    return initialized(initialIncomeOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Income> initialIncomeOption)? initialized,
    TResult? Function(String senderStr)? senderChanged,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(String currencyStr)? currencyChanged,
    TResult? Function()? saved,
  }) {
    return initialized?.call(initialIncomeOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Income> initialIncomeOption)? initialized,
    TResult Function(String senderStr)? senderChanged,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String currencyStr)? currencyChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialIncomeOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SenderChanged value) senderChanged,
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
    TResult? Function(_SenderChanged value)? senderChanged,
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
    TResult Function(_SenderChanged value)? senderChanged,
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

abstract class _Initialized implements IncomeFormEvent {
  const factory _Initialized(final Option<Income> initialIncomeOption) =
      _$_Initialized;

  Option<Income> get initialIncomeOption;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SenderChangedCopyWith<$Res> {
  factory _$$_SenderChangedCopyWith(
          _$_SenderChanged value, $Res Function(_$_SenderChanged) then) =
      __$$_SenderChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String senderStr});
}

/// @nodoc
class __$$_SenderChangedCopyWithImpl<$Res>
    extends _$IncomeFormEventCopyWithImpl<$Res, _$_SenderChanged>
    implements _$$_SenderChangedCopyWith<$Res> {
  __$$_SenderChangedCopyWithImpl(
      _$_SenderChanged _value, $Res Function(_$_SenderChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderStr = null,
  }) {
    return _then(_$_SenderChanged(
      null == senderStr
          ? _value.senderStr
          : senderStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SenderChanged implements _SenderChanged {
  const _$_SenderChanged(this.senderStr);

  @override
  final String senderStr;

  @override
  String toString() {
    return 'IncomeFormEvent.senderChanged(senderStr: $senderStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SenderChanged &&
            (identical(other.senderStr, senderStr) ||
                other.senderStr == senderStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, senderStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SenderChangedCopyWith<_$_SenderChanged> get copyWith =>
      __$$_SenderChangedCopyWithImpl<_$_SenderChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Income> initialIncomeOption) initialized,
    required TResult Function(String senderStr) senderChanged,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String currencyStr) currencyChanged,
    required TResult Function() saved,
  }) {
    return senderChanged(senderStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Income> initialIncomeOption)? initialized,
    TResult? Function(String senderStr)? senderChanged,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(String currencyStr)? currencyChanged,
    TResult? Function()? saved,
  }) {
    return senderChanged?.call(senderStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Income> initialIncomeOption)? initialized,
    TResult Function(String senderStr)? senderChanged,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String currencyStr)? currencyChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (senderChanged != null) {
      return senderChanged(senderStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SenderChanged value) senderChanged,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_CurrencyChanged value) currencyChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return senderChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SenderChanged value)? senderChanged,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_CurrencyChanged value)? currencyChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return senderChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SenderChanged value)? senderChanged,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_CurrencyChanged value)? currencyChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (senderChanged != null) {
      return senderChanged(this);
    }
    return orElse();
  }
}

abstract class _SenderChanged implements IncomeFormEvent {
  const factory _SenderChanged(final String senderStr) = _$_SenderChanged;

  String get senderStr;
  @JsonKey(ignore: true)
  _$$_SenderChangedCopyWith<_$_SenderChanged> get copyWith =>
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
    extends _$IncomeFormEventCopyWithImpl<$Res, _$_AmountChanged>
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
    return 'IncomeFormEvent.amountChanged(amountStr: $amountStr)';
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
    required TResult Function(Option<Income> initialIncomeOption) initialized,
    required TResult Function(String senderStr) senderChanged,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String currencyStr) currencyChanged,
    required TResult Function() saved,
  }) {
    return amountChanged(amountStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Income> initialIncomeOption)? initialized,
    TResult? Function(String senderStr)? senderChanged,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(String currencyStr)? currencyChanged,
    TResult? Function()? saved,
  }) {
    return amountChanged?.call(amountStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Income> initialIncomeOption)? initialized,
    TResult Function(String senderStr)? senderChanged,
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
    required TResult Function(_SenderChanged value) senderChanged,
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
    TResult? Function(_SenderChanged value)? senderChanged,
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
    TResult Function(_SenderChanged value)? senderChanged,
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

abstract class _AmountChanged implements IncomeFormEvent {
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
    extends _$IncomeFormEventCopyWithImpl<$Res, _$_CurrencyChanged>
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
    return 'IncomeFormEvent.currencyChanged(currencyStr: $currencyStr)';
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
    required TResult Function(Option<Income> initialIncomeOption) initialized,
    required TResult Function(String senderStr) senderChanged,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String currencyStr) currencyChanged,
    required TResult Function() saved,
  }) {
    return currencyChanged(currencyStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Income> initialIncomeOption)? initialized,
    TResult? Function(String senderStr)? senderChanged,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(String currencyStr)? currencyChanged,
    TResult? Function()? saved,
  }) {
    return currencyChanged?.call(currencyStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Income> initialIncomeOption)? initialized,
    TResult Function(String senderStr)? senderChanged,
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
    required TResult Function(_SenderChanged value) senderChanged,
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
    TResult? Function(_SenderChanged value)? senderChanged,
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
    TResult Function(_SenderChanged value)? senderChanged,
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

abstract class _CurrencyChanged implements IncomeFormEvent {
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
    extends _$IncomeFormEventCopyWithImpl<$Res, _$_Saved>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'IncomeFormEvent.saved()';
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
    required TResult Function(Option<Income> initialIncomeOption) initialized,
    required TResult Function(String senderStr) senderChanged,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String currencyStr) currencyChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Income> initialIncomeOption)? initialized,
    TResult? Function(String senderStr)? senderChanged,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(String currencyStr)? currencyChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Income> initialIncomeOption)? initialized,
    TResult Function(String senderStr)? senderChanged,
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
    required TResult Function(_SenderChanged value) senderChanged,
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
    TResult? Function(_SenderChanged value)? senderChanged,
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
    TResult Function(_SenderChanged value)? senderChanged,
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

abstract class _Saved implements IncomeFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
mixin _$IncomeFormState {
  Option<Income> get income => throw _privateConstructorUsedError;
  TransactionSender get sender => throw _privateConstructorUsedError;
  TransactionAmount get amount => throw _privateConstructorUsedError;
  TransactionCurrency get currency => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  Option<Either<IncomeFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IncomeFormStateCopyWith<IncomeFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomeFormStateCopyWith<$Res> {
  factory $IncomeFormStateCopyWith(
          IncomeFormState value, $Res Function(IncomeFormState) then) =
      _$IncomeFormStateCopyWithImpl<$Res, IncomeFormState>;
  @useResult
  $Res call(
      {Option<Income> income,
      TransactionSender sender,
      TransactionAmount amount,
      TransactionCurrency currency,
      bool showErrorMessages,
      bool isSaving,
      bool isEditing,
      Option<Either<IncomeFailure, Unit>> saveFailureOrSuccessOption});
}

/// @nodoc
class _$IncomeFormStateCopyWithImpl<$Res, $Val extends IncomeFormState>
    implements $IncomeFormStateCopyWith<$Res> {
  _$IncomeFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? income = null,
    Object? sender = null,
    Object? amount = null,
    Object? currency = null,
    Object? showErrorMessages = null,
    Object? isSaving = null,
    Object? isEditing = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      income: null == income
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as Option<Income>,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as TransactionSender,
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
              as Option<Either<IncomeFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IncomeFormStateCopyWith<$Res>
    implements $IncomeFormStateCopyWith<$Res> {
  factory _$$_IncomeFormStateCopyWith(
          _$_IncomeFormState value, $Res Function(_$_IncomeFormState) then) =
      __$$_IncomeFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Income> income,
      TransactionSender sender,
      TransactionAmount amount,
      TransactionCurrency currency,
      bool showErrorMessages,
      bool isSaving,
      bool isEditing,
      Option<Either<IncomeFailure, Unit>> saveFailureOrSuccessOption});
}

/// @nodoc
class __$$_IncomeFormStateCopyWithImpl<$Res>
    extends _$IncomeFormStateCopyWithImpl<$Res, _$_IncomeFormState>
    implements _$$_IncomeFormStateCopyWith<$Res> {
  __$$_IncomeFormStateCopyWithImpl(
      _$_IncomeFormState _value, $Res Function(_$_IncomeFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? income = null,
    Object? sender = null,
    Object? amount = null,
    Object? currency = null,
    Object? showErrorMessages = null,
    Object? isSaving = null,
    Object? isEditing = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_$_IncomeFormState(
      income: null == income
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as Option<Income>,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as TransactionSender,
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
              as Option<Either<IncomeFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_IncomeFormState implements _IncomeFormState {
  const _$_IncomeFormState(
      {required this.income,
      required this.sender,
      required this.amount,
      required this.currency,
      required this.showErrorMessages,
      required this.isSaving,
      required this.isEditing,
      required this.saveFailureOrSuccessOption});

  @override
  final Option<Income> income;
  @override
  final TransactionSender sender;
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
  final Option<Either<IncomeFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'IncomeFormState(income: $income, sender: $sender, amount: $amount, currency: $currency, showErrorMessages: $showErrorMessages, isSaving: $isSaving, isEditing: $isEditing, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IncomeFormState &&
            (identical(other.income, income) || other.income == income) &&
            (identical(other.sender, sender) || other.sender == sender) &&
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
  int get hashCode => Object.hash(runtimeType, income, sender, amount, currency,
      showErrorMessages, isSaving, isEditing, saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IncomeFormStateCopyWith<_$_IncomeFormState> get copyWith =>
      __$$_IncomeFormStateCopyWithImpl<_$_IncomeFormState>(this, _$identity);
}

abstract class _IncomeFormState implements IncomeFormState {
  const factory _IncomeFormState(
      {required final Option<Income> income,
      required final TransactionSender sender,
      required final TransactionAmount amount,
      required final TransactionCurrency currency,
      required final bool showErrorMessages,
      required final bool isSaving,
      required final bool isEditing,
      required final Option<Either<IncomeFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_IncomeFormState;

  @override
  Option<Income> get income;
  @override
  TransactionSender get sender;
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
  Option<Either<IncomeFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_IncomeFormStateCopyWith<_$_IncomeFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

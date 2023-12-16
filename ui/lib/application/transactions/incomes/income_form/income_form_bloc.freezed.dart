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
    required TResult Function(CategoryId categoryId) categoryIdChanged,
    required TResult Function(String senderStr) senderChanged,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String currencyStr) currencyChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Income> initialIncomeOption)? initialized,
    TResult? Function(CategoryId categoryId)? categoryIdChanged,
    TResult? Function(String senderStr)? senderChanged,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(String currencyStr)? currencyChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Income> initialIncomeOption)? initialized,
    TResult Function(CategoryId categoryId)? categoryIdChanged,
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
    required TResult Function(_CategoryIdChanged value) categoryIdChanged,
    required TResult Function(_SenderChanged value) senderChanged,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_CurrencyChanged value) currencyChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_CategoryIdChanged value)? categoryIdChanged,
    TResult? Function(_SenderChanged value)? senderChanged,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_CurrencyChanged value)? currencyChanged,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CategoryIdChanged value)? categoryIdChanged,
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
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<Income> initialIncomeOption});
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$IncomeFormEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialIncomeOption = null,
  }) {
    return _then(_$InitializedImpl(
      null == initialIncomeOption
          ? _value.initialIncomeOption
          : initialIncomeOption // ignore: cast_nullable_to_non_nullable
              as Option<Income>,
    ));
  }
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl(this.initialIncomeOption);

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
            other is _$InitializedImpl &&
            (identical(other.initialIncomeOption, initialIncomeOption) ||
                other.initialIncomeOption == initialIncomeOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialIncomeOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Income> initialIncomeOption) initialized,
    required TResult Function(CategoryId categoryId) categoryIdChanged,
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
    TResult? Function(CategoryId categoryId)? categoryIdChanged,
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
    TResult Function(CategoryId categoryId)? categoryIdChanged,
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
    required TResult Function(_CategoryIdChanged value) categoryIdChanged,
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
    TResult? Function(_CategoryIdChanged value)? categoryIdChanged,
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
    TResult Function(_CategoryIdChanged value)? categoryIdChanged,
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
      _$InitializedImpl;

  Option<Income> get initialIncomeOption;
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
    extends _$IncomeFormEventCopyWithImpl<$Res, _$CategoryIdChangedImpl>
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
    return 'IncomeFormEvent.categoryIdChanged(categoryId: $categoryId)';
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
    required TResult Function(Option<Income> initialIncomeOption) initialized,
    required TResult Function(CategoryId categoryId) categoryIdChanged,
    required TResult Function(String senderStr) senderChanged,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String currencyStr) currencyChanged,
    required TResult Function() saved,
  }) {
    return categoryIdChanged(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Income> initialIncomeOption)? initialized,
    TResult? Function(CategoryId categoryId)? categoryIdChanged,
    TResult? Function(String senderStr)? senderChanged,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(String currencyStr)? currencyChanged,
    TResult? Function()? saved,
  }) {
    return categoryIdChanged?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Income> initialIncomeOption)? initialized,
    TResult Function(CategoryId categoryId)? categoryIdChanged,
    TResult Function(String senderStr)? senderChanged,
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
    required TResult Function(_SenderChanged value) senderChanged,
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
    TResult? Function(_SenderChanged value)? senderChanged,
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
    TResult Function(_SenderChanged value)? senderChanged,
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

abstract class _CategoryIdChanged implements IncomeFormEvent {
  const factory _CategoryIdChanged(final CategoryId categoryId) =
      _$CategoryIdChangedImpl;

  CategoryId get categoryId;
  @JsonKey(ignore: true)
  _$$CategoryIdChangedImplCopyWith<_$CategoryIdChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SenderChangedImplCopyWith<$Res> {
  factory _$$SenderChangedImplCopyWith(
          _$SenderChangedImpl value, $Res Function(_$SenderChangedImpl) then) =
      __$$SenderChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String senderStr});
}

/// @nodoc
class __$$SenderChangedImplCopyWithImpl<$Res>
    extends _$IncomeFormEventCopyWithImpl<$Res, _$SenderChangedImpl>
    implements _$$SenderChangedImplCopyWith<$Res> {
  __$$SenderChangedImplCopyWithImpl(
      _$SenderChangedImpl _value, $Res Function(_$SenderChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderStr = null,
  }) {
    return _then(_$SenderChangedImpl(
      null == senderStr
          ? _value.senderStr
          : senderStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SenderChangedImpl implements _SenderChanged {
  const _$SenderChangedImpl(this.senderStr);

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
            other is _$SenderChangedImpl &&
            (identical(other.senderStr, senderStr) ||
                other.senderStr == senderStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, senderStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SenderChangedImplCopyWith<_$SenderChangedImpl> get copyWith =>
      __$$SenderChangedImplCopyWithImpl<_$SenderChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Income> initialIncomeOption) initialized,
    required TResult Function(CategoryId categoryId) categoryIdChanged,
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
    TResult? Function(CategoryId categoryId)? categoryIdChanged,
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
    TResult Function(CategoryId categoryId)? categoryIdChanged,
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
    required TResult Function(_CategoryIdChanged value) categoryIdChanged,
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
    TResult? Function(_CategoryIdChanged value)? categoryIdChanged,
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
    TResult Function(_CategoryIdChanged value)? categoryIdChanged,
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
  const factory _SenderChanged(final String senderStr) = _$SenderChangedImpl;

  String get senderStr;
  @JsonKey(ignore: true)
  _$$SenderChangedImplCopyWith<_$SenderChangedImpl> get copyWith =>
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
    extends _$IncomeFormEventCopyWithImpl<$Res, _$AmountChangedImpl>
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
    return 'IncomeFormEvent.amountChanged(amountStr: $amountStr)';
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
    required TResult Function(Option<Income> initialIncomeOption) initialized,
    required TResult Function(CategoryId categoryId) categoryIdChanged,
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
    TResult? Function(CategoryId categoryId)? categoryIdChanged,
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
    TResult Function(CategoryId categoryId)? categoryIdChanged,
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
    required TResult Function(_CategoryIdChanged value) categoryIdChanged,
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
    TResult? Function(_CategoryIdChanged value)? categoryIdChanged,
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
    TResult Function(_CategoryIdChanged value)? categoryIdChanged,
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
    extends _$IncomeFormEventCopyWithImpl<$Res, _$CurrencyChangedImpl>
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
    return 'IncomeFormEvent.currencyChanged(currencyStr: $currencyStr)';
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
    required TResult Function(Option<Income> initialIncomeOption) initialized,
    required TResult Function(CategoryId categoryId) categoryIdChanged,
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
    TResult? Function(CategoryId categoryId)? categoryIdChanged,
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
    TResult Function(CategoryId categoryId)? categoryIdChanged,
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
    required TResult Function(_CategoryIdChanged value) categoryIdChanged,
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
    TResult? Function(_CategoryIdChanged value)? categoryIdChanged,
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
    TResult Function(_CategoryIdChanged value)? categoryIdChanged,
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
    extends _$IncomeFormEventCopyWithImpl<$Res, _$SavedImpl>
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
    return 'IncomeFormEvent.saved()';
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
    required TResult Function(Option<Income> initialIncomeOption) initialized,
    required TResult Function(CategoryId categoryId) categoryIdChanged,
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
    TResult? Function(CategoryId categoryId)? categoryIdChanged,
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
    TResult Function(CategoryId categoryId)? categoryIdChanged,
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
    required TResult Function(_CategoryIdChanged value) categoryIdChanged,
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
    TResult? Function(_CategoryIdChanged value)? categoryIdChanged,
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
    TResult Function(_CategoryIdChanged value)? categoryIdChanged,
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
  const factory _Saved() = _$SavedImpl;
}

/// @nodoc
mixin _$IncomeFormState {
  Option<Income> get income => throw _privateConstructorUsedError;
  Option<CategoryId> get categoryId => throw _privateConstructorUsedError;
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
      Option<CategoryId> categoryId,
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
    Object? categoryId = null,
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
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as Option<CategoryId>,
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
abstract class _$$IncomeFormStateImplCopyWith<$Res>
    implements $IncomeFormStateCopyWith<$Res> {
  factory _$$IncomeFormStateImplCopyWith(_$IncomeFormStateImpl value,
          $Res Function(_$IncomeFormStateImpl) then) =
      __$$IncomeFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Income> income,
      Option<CategoryId> categoryId,
      TransactionSender sender,
      TransactionAmount amount,
      TransactionCurrency currency,
      bool showErrorMessages,
      bool isSaving,
      bool isEditing,
      Option<Either<IncomeFailure, Unit>> saveFailureOrSuccessOption});
}

/// @nodoc
class __$$IncomeFormStateImplCopyWithImpl<$Res>
    extends _$IncomeFormStateCopyWithImpl<$Res, _$IncomeFormStateImpl>
    implements _$$IncomeFormStateImplCopyWith<$Res> {
  __$$IncomeFormStateImplCopyWithImpl(
      _$IncomeFormStateImpl _value, $Res Function(_$IncomeFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? income = null,
    Object? categoryId = null,
    Object? sender = null,
    Object? amount = null,
    Object? currency = null,
    Object? showErrorMessages = null,
    Object? isSaving = null,
    Object? isEditing = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_$IncomeFormStateImpl(
      income: null == income
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as Option<Income>,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as Option<CategoryId>,
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

class _$IncomeFormStateImpl implements _IncomeFormState {
  const _$IncomeFormStateImpl(
      {required this.income,
      required this.categoryId,
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
  final Option<CategoryId> categoryId;
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
    return 'IncomeFormState(income: $income, categoryId: $categoryId, sender: $sender, amount: $amount, currency: $currency, showErrorMessages: $showErrorMessages, isSaving: $isSaving, isEditing: $isEditing, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncomeFormStateImpl &&
            (identical(other.income, income) || other.income == income) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
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
  int get hashCode => Object.hash(
      runtimeType,
      income,
      categoryId,
      sender,
      amount,
      currency,
      showErrorMessages,
      isSaving,
      isEditing,
      saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IncomeFormStateImplCopyWith<_$IncomeFormStateImpl> get copyWith =>
      __$$IncomeFormStateImplCopyWithImpl<_$IncomeFormStateImpl>(
          this, _$identity);
}

abstract class _IncomeFormState implements IncomeFormState {
  const factory _IncomeFormState(
      {required final Option<Income> income,
      required final Option<CategoryId> categoryId,
      required final TransactionSender sender,
      required final TransactionAmount amount,
      required final TransactionCurrency currency,
      required final bool showErrorMessages,
      required final bool isSaving,
      required final bool isEditing,
      required final Option<Either<IncomeFailure, Unit>>
          saveFailureOrSuccessOption}) = _$IncomeFormStateImpl;

  @override
  Option<Income> get income;
  @override
  Option<CategoryId> get categoryId;
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
  _$$IncomeFormStateImplCopyWith<_$IncomeFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

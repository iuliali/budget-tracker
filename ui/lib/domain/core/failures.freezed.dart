// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) unexpected,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) passwordNotMatch,
    required TResult Function(T failedValue) shortUsername,
    required TResult Function(T failedValue) shortFirstName,
    required TResult Function(T failedValue) shortLastName,
    required TResult Function(T failedValue) shortCategoryName,
    required TResult Function(T failedValue) negativeBudgetAmount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? unexpected,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? passwordNotMatch,
    TResult? Function(T failedValue)? shortUsername,
    TResult? Function(T failedValue)? shortFirstName,
    TResult? Function(T failedValue)? shortLastName,
    TResult? Function(T failedValue)? shortCategoryName,
    TResult? Function(T failedValue)? negativeBudgetAmount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? unexpected,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordNotMatch,
    TResult Function(T failedValue)? shortUsername,
    TResult Function(T failedValue)? shortFirstName,
    TResult Function(T failedValue)? shortLastName,
    TResult Function(T failedValue)? shortCategoryName,
    TResult Function(T failedValue)? negativeBudgetAmount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected<T> value) unexpected,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(PasswordsNotMatch<T> value) passwordNotMatch,
    required TResult Function(ShortUsername<T> value) shortUsername,
    required TResult Function(ShortFirstName<T> value) shortFirstName,
    required TResult Function(ShortLastName<T> value) shortLastName,
    required TResult Function(ShortCategoryName<T> value) shortCategoryName,
    required TResult Function(NegativeBudgetAmount<T> value)
        negativeBudgetAmount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unexpected<T> value)? unexpected,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(PasswordsNotMatch<T> value)? passwordNotMatch,
    TResult? Function(ShortUsername<T> value)? shortUsername,
    TResult? Function(ShortFirstName<T> value)? shortFirstName,
    TResult? Function(ShortLastName<T> value)? shortLastName,
    TResult? Function(ShortCategoryName<T> value)? shortCategoryName,
    TResult? Function(NegativeBudgetAmount<T> value)? negativeBudgetAmount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected<T> value)? unexpected,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsNotMatch<T> value)? passwordNotMatch,
    TResult Function(ShortUsername<T> value)? shortUsername,
    TResult Function(ShortFirstName<T> value)? shortFirstName,
    TResult Function(ShortLastName<T> value)? shortLastName,
    TResult Function(ShortCategoryName<T> value)? shortCategoryName,
    TResult Function(NegativeBudgetAmount<T> value)? negativeBudgetAmount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res, ValueFailure<T>>;
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res, $Val extends ValueFailure<T>>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnexpectedCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$UnexpectedCopyWith(
          _$Unexpected<T> value, $Res Function(_$Unexpected<T>) then) =
      __$$UnexpectedCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$UnexpectedCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$Unexpected<T>>
    implements _$$UnexpectedCopyWith<T, $Res> {
  __$$UnexpectedCopyWithImpl(
      _$Unexpected<T> _value, $Res Function(_$Unexpected<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$Unexpected<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Unexpected<T> with DiagnosticableTreeMixin implements Unexpected<T> {
  const _$Unexpected({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.unexpected(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.unexpected'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Unexpected<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnexpectedCopyWith<T, _$Unexpected<T>> get copyWith =>
      __$$UnexpectedCopyWithImpl<T, _$Unexpected<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) unexpected,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) passwordNotMatch,
    required TResult Function(T failedValue) shortUsername,
    required TResult Function(T failedValue) shortFirstName,
    required TResult Function(T failedValue) shortLastName,
    required TResult Function(T failedValue) shortCategoryName,
    required TResult Function(T failedValue) negativeBudgetAmount,
  }) {
    return unexpected(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? unexpected,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? passwordNotMatch,
    TResult? Function(T failedValue)? shortUsername,
    TResult? Function(T failedValue)? shortFirstName,
    TResult? Function(T failedValue)? shortLastName,
    TResult? Function(T failedValue)? shortCategoryName,
    TResult? Function(T failedValue)? negativeBudgetAmount,
  }) {
    return unexpected?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? unexpected,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordNotMatch,
    TResult Function(T failedValue)? shortUsername,
    TResult Function(T failedValue)? shortFirstName,
    TResult Function(T failedValue)? shortLastName,
    TResult Function(T failedValue)? shortCategoryName,
    TResult Function(T failedValue)? negativeBudgetAmount,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected<T> value) unexpected,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(PasswordsNotMatch<T> value) passwordNotMatch,
    required TResult Function(ShortUsername<T> value) shortUsername,
    required TResult Function(ShortFirstName<T> value) shortFirstName,
    required TResult Function(ShortLastName<T> value) shortLastName,
    required TResult Function(ShortCategoryName<T> value) shortCategoryName,
    required TResult Function(NegativeBudgetAmount<T> value)
        negativeBudgetAmount,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unexpected<T> value)? unexpected,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(PasswordsNotMatch<T> value)? passwordNotMatch,
    TResult? Function(ShortUsername<T> value)? shortUsername,
    TResult? Function(ShortFirstName<T> value)? shortFirstName,
    TResult? Function(ShortLastName<T> value)? shortLastName,
    TResult? Function(ShortCategoryName<T> value)? shortCategoryName,
    TResult? Function(NegativeBudgetAmount<T> value)? negativeBudgetAmount,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected<T> value)? unexpected,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsNotMatch<T> value)? passwordNotMatch,
    TResult Function(ShortUsername<T> value)? shortUsername,
    TResult Function(ShortFirstName<T> value)? shortFirstName,
    TResult Function(ShortLastName<T> value)? shortLastName,
    TResult Function(ShortCategoryName<T> value)? shortCategoryName,
    TResult Function(NegativeBudgetAmount<T> value)? negativeBudgetAmount,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class Unexpected<T> implements ValueFailure<T> {
  const factory Unexpected({required final T failedValue}) = _$Unexpected<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$UnexpectedCopyWith<T, _$Unexpected<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$EmptyCopyWith(_$Empty<T> value, $Res Function(_$Empty<T>) then) =
      __$$EmptyCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$EmptyCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$Empty<T>>
    implements _$$EmptyCopyWith<T, $Res> {
  __$$EmptyCopyWithImpl(_$Empty<T> _value, $Res Function(_$Empty<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$Empty<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Empty<T> with DiagnosticableTreeMixin implements Empty<T> {
  const _$Empty({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.empty'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Empty<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyCopyWith<T, _$Empty<T>> get copyWith =>
      __$$EmptyCopyWithImpl<T, _$Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) unexpected,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) passwordNotMatch,
    required TResult Function(T failedValue) shortUsername,
    required TResult Function(T failedValue) shortFirstName,
    required TResult Function(T failedValue) shortLastName,
    required TResult Function(T failedValue) shortCategoryName,
    required TResult Function(T failedValue) negativeBudgetAmount,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? unexpected,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? passwordNotMatch,
    TResult? Function(T failedValue)? shortUsername,
    TResult? Function(T failedValue)? shortFirstName,
    TResult? Function(T failedValue)? shortLastName,
    TResult? Function(T failedValue)? shortCategoryName,
    TResult? Function(T failedValue)? negativeBudgetAmount,
  }) {
    return empty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? unexpected,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordNotMatch,
    TResult Function(T failedValue)? shortUsername,
    TResult Function(T failedValue)? shortFirstName,
    TResult Function(T failedValue)? shortLastName,
    TResult Function(T failedValue)? shortCategoryName,
    TResult Function(T failedValue)? negativeBudgetAmount,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected<T> value) unexpected,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(PasswordsNotMatch<T> value) passwordNotMatch,
    required TResult Function(ShortUsername<T> value) shortUsername,
    required TResult Function(ShortFirstName<T> value) shortFirstName,
    required TResult Function(ShortLastName<T> value) shortLastName,
    required TResult Function(ShortCategoryName<T> value) shortCategoryName,
    required TResult Function(NegativeBudgetAmount<T> value)
        negativeBudgetAmount,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unexpected<T> value)? unexpected,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(PasswordsNotMatch<T> value)? passwordNotMatch,
    TResult? Function(ShortUsername<T> value)? shortUsername,
    TResult? Function(ShortFirstName<T> value)? shortFirstName,
    TResult? Function(ShortLastName<T> value)? shortLastName,
    TResult? Function(ShortCategoryName<T> value)? shortCategoryName,
    TResult? Function(NegativeBudgetAmount<T> value)? negativeBudgetAmount,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected<T> value)? unexpected,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsNotMatch<T> value)? passwordNotMatch,
    TResult Function(ShortUsername<T> value)? shortUsername,
    TResult Function(ShortFirstName<T> value)? shortFirstName,
    TResult Function(ShortLastName<T> value)? shortLastName,
    TResult Function(ShortCategoryName<T> value)? shortCategoryName,
    TResult Function(NegativeBudgetAmount<T> value)? negativeBudgetAmount,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({required final T failedValue}) = _$Empty<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$EmptyCopyWith<T, _$Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidEmailCopyWith(
          _$InvalidEmail<T> value, $Res Function(_$InvalidEmail<T>) then) =
      __$$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidEmail<T>>
    implements _$$InvalidEmailCopyWith<T, $Res> {
  __$$InvalidEmailCopyWithImpl(
      _$InvalidEmail<T> _value, $Res Function(_$InvalidEmail<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidEmail<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidEmail<T>
    with DiagnosticableTreeMixin
    implements InvalidEmail<T> {
  const _$InvalidEmail({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidEmail'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmail<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidEmailCopyWith<T, _$InvalidEmail<T>> get copyWith =>
      __$$InvalidEmailCopyWithImpl<T, _$InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) unexpected,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) passwordNotMatch,
    required TResult Function(T failedValue) shortUsername,
    required TResult Function(T failedValue) shortFirstName,
    required TResult Function(T failedValue) shortLastName,
    required TResult Function(T failedValue) shortCategoryName,
    required TResult Function(T failedValue) negativeBudgetAmount,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? unexpected,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? passwordNotMatch,
    TResult? Function(T failedValue)? shortUsername,
    TResult? Function(T failedValue)? shortFirstName,
    TResult? Function(T failedValue)? shortLastName,
    TResult? Function(T failedValue)? shortCategoryName,
    TResult? Function(T failedValue)? negativeBudgetAmount,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? unexpected,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordNotMatch,
    TResult Function(T failedValue)? shortUsername,
    TResult Function(T failedValue)? shortFirstName,
    TResult Function(T failedValue)? shortLastName,
    TResult Function(T failedValue)? shortCategoryName,
    TResult Function(T failedValue)? negativeBudgetAmount,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected<T> value) unexpected,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(PasswordsNotMatch<T> value) passwordNotMatch,
    required TResult Function(ShortUsername<T> value) shortUsername,
    required TResult Function(ShortFirstName<T> value) shortFirstName,
    required TResult Function(ShortLastName<T> value) shortLastName,
    required TResult Function(ShortCategoryName<T> value) shortCategoryName,
    required TResult Function(NegativeBudgetAmount<T> value)
        negativeBudgetAmount,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unexpected<T> value)? unexpected,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(PasswordsNotMatch<T> value)? passwordNotMatch,
    TResult? Function(ShortUsername<T> value)? shortUsername,
    TResult? Function(ShortFirstName<T> value)? shortFirstName,
    TResult? Function(ShortLastName<T> value)? shortLastName,
    TResult? Function(ShortCategoryName<T> value)? shortCategoryName,
    TResult? Function(NegativeBudgetAmount<T> value)? negativeBudgetAmount,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected<T> value)? unexpected,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsNotMatch<T> value)? passwordNotMatch,
    TResult Function(ShortUsername<T> value)? shortUsername,
    TResult Function(ShortFirstName<T> value)? shortFirstName,
    TResult Function(ShortLastName<T> value)? shortLastName,
    TResult Function(ShortCategoryName<T> value)? shortCategoryName,
    TResult Function(NegativeBudgetAmount<T> value)? negativeBudgetAmount,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({required final T failedValue}) =
      _$InvalidEmail<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$InvalidEmailCopyWith<T, _$InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShortPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ShortPasswordCopyWith(
          _$ShortPassword<T> value, $Res Function(_$ShortPassword<T>) then) =
      __$$ShortPasswordCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ShortPassword<T>>
    implements _$$ShortPasswordCopyWith<T, $Res> {
  __$$ShortPasswordCopyWithImpl(
      _$ShortPassword<T> _value, $Res Function(_$ShortPassword<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$ShortPassword<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ShortPassword<T>
    with DiagnosticableTreeMixin
    implements ShortPassword<T> {
  const _$ShortPassword({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.shortPassword'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortPassword<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShortPasswordCopyWith<T, _$ShortPassword<T>> get copyWith =>
      __$$ShortPasswordCopyWithImpl<T, _$ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) unexpected,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) passwordNotMatch,
    required TResult Function(T failedValue) shortUsername,
    required TResult Function(T failedValue) shortFirstName,
    required TResult Function(T failedValue) shortLastName,
    required TResult Function(T failedValue) shortCategoryName,
    required TResult Function(T failedValue) negativeBudgetAmount,
  }) {
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? unexpected,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? passwordNotMatch,
    TResult? Function(T failedValue)? shortUsername,
    TResult? Function(T failedValue)? shortFirstName,
    TResult? Function(T failedValue)? shortLastName,
    TResult? Function(T failedValue)? shortCategoryName,
    TResult? Function(T failedValue)? negativeBudgetAmount,
  }) {
    return shortPassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? unexpected,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordNotMatch,
    TResult Function(T failedValue)? shortUsername,
    TResult Function(T failedValue)? shortFirstName,
    TResult Function(T failedValue)? shortLastName,
    TResult Function(T failedValue)? shortCategoryName,
    TResult Function(T failedValue)? negativeBudgetAmount,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected<T> value) unexpected,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(PasswordsNotMatch<T> value) passwordNotMatch,
    required TResult Function(ShortUsername<T> value) shortUsername,
    required TResult Function(ShortFirstName<T> value) shortFirstName,
    required TResult Function(ShortLastName<T> value) shortLastName,
    required TResult Function(ShortCategoryName<T> value) shortCategoryName,
    required TResult Function(NegativeBudgetAmount<T> value)
        negativeBudgetAmount,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unexpected<T> value)? unexpected,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(PasswordsNotMatch<T> value)? passwordNotMatch,
    TResult? Function(ShortUsername<T> value)? shortUsername,
    TResult? Function(ShortFirstName<T> value)? shortFirstName,
    TResult? Function(ShortLastName<T> value)? shortLastName,
    TResult? Function(ShortCategoryName<T> value)? shortCategoryName,
    TResult? Function(NegativeBudgetAmount<T> value)? negativeBudgetAmount,
  }) {
    return shortPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected<T> value)? unexpected,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsNotMatch<T> value)? passwordNotMatch,
    TResult Function(ShortUsername<T> value)? shortUsername,
    TResult Function(ShortFirstName<T> value)? shortFirstName,
    TResult Function(ShortLastName<T> value)? shortLastName,
    TResult Function(ShortCategoryName<T> value)? shortCategoryName,
    TResult Function(NegativeBudgetAmount<T> value)? negativeBudgetAmount,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({required final T failedValue}) =
      _$ShortPassword<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$ShortPasswordCopyWith<T, _$ShortPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordsNotMatchCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$PasswordsNotMatchCopyWith(_$PasswordsNotMatch<T> value,
          $Res Function(_$PasswordsNotMatch<T>) then) =
      __$$PasswordsNotMatchCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$PasswordsNotMatchCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$PasswordsNotMatch<T>>
    implements _$$PasswordsNotMatchCopyWith<T, $Res> {
  __$$PasswordsNotMatchCopyWithImpl(_$PasswordsNotMatch<T> _value,
      $Res Function(_$PasswordsNotMatch<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$PasswordsNotMatch<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$PasswordsNotMatch<T>
    with DiagnosticableTreeMixin
    implements PasswordsNotMatch<T> {
  const _$PasswordsNotMatch({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.passwordNotMatch(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.passwordNotMatch'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordsNotMatch<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordsNotMatchCopyWith<T, _$PasswordsNotMatch<T>> get copyWith =>
      __$$PasswordsNotMatchCopyWithImpl<T, _$PasswordsNotMatch<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) unexpected,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) passwordNotMatch,
    required TResult Function(T failedValue) shortUsername,
    required TResult Function(T failedValue) shortFirstName,
    required TResult Function(T failedValue) shortLastName,
    required TResult Function(T failedValue) shortCategoryName,
    required TResult Function(T failedValue) negativeBudgetAmount,
  }) {
    return passwordNotMatch(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? unexpected,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? passwordNotMatch,
    TResult? Function(T failedValue)? shortUsername,
    TResult? Function(T failedValue)? shortFirstName,
    TResult? Function(T failedValue)? shortLastName,
    TResult? Function(T failedValue)? shortCategoryName,
    TResult? Function(T failedValue)? negativeBudgetAmount,
  }) {
    return passwordNotMatch?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? unexpected,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordNotMatch,
    TResult Function(T failedValue)? shortUsername,
    TResult Function(T failedValue)? shortFirstName,
    TResult Function(T failedValue)? shortLastName,
    TResult Function(T failedValue)? shortCategoryName,
    TResult Function(T failedValue)? negativeBudgetAmount,
    required TResult orElse(),
  }) {
    if (passwordNotMatch != null) {
      return passwordNotMatch(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected<T> value) unexpected,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(PasswordsNotMatch<T> value) passwordNotMatch,
    required TResult Function(ShortUsername<T> value) shortUsername,
    required TResult Function(ShortFirstName<T> value) shortFirstName,
    required TResult Function(ShortLastName<T> value) shortLastName,
    required TResult Function(ShortCategoryName<T> value) shortCategoryName,
    required TResult Function(NegativeBudgetAmount<T> value)
        negativeBudgetAmount,
  }) {
    return passwordNotMatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unexpected<T> value)? unexpected,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(PasswordsNotMatch<T> value)? passwordNotMatch,
    TResult? Function(ShortUsername<T> value)? shortUsername,
    TResult? Function(ShortFirstName<T> value)? shortFirstName,
    TResult? Function(ShortLastName<T> value)? shortLastName,
    TResult? Function(ShortCategoryName<T> value)? shortCategoryName,
    TResult? Function(NegativeBudgetAmount<T> value)? negativeBudgetAmount,
  }) {
    return passwordNotMatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected<T> value)? unexpected,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsNotMatch<T> value)? passwordNotMatch,
    TResult Function(ShortUsername<T> value)? shortUsername,
    TResult Function(ShortFirstName<T> value)? shortFirstName,
    TResult Function(ShortLastName<T> value)? shortLastName,
    TResult Function(ShortCategoryName<T> value)? shortCategoryName,
    TResult Function(NegativeBudgetAmount<T> value)? negativeBudgetAmount,
    required TResult orElse(),
  }) {
    if (passwordNotMatch != null) {
      return passwordNotMatch(this);
    }
    return orElse();
  }
}

abstract class PasswordsNotMatch<T> implements ValueFailure<T> {
  const factory PasswordsNotMatch({required final T failedValue}) =
      _$PasswordsNotMatch<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$PasswordsNotMatchCopyWith<T, _$PasswordsNotMatch<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShortUsernameCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ShortUsernameCopyWith(
          _$ShortUsername<T> value, $Res Function(_$ShortUsername<T>) then) =
      __$$ShortUsernameCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$ShortUsernameCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ShortUsername<T>>
    implements _$$ShortUsernameCopyWith<T, $Res> {
  __$$ShortUsernameCopyWithImpl(
      _$ShortUsername<T> _value, $Res Function(_$ShortUsername<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$ShortUsername<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ShortUsername<T>
    with DiagnosticableTreeMixin
    implements ShortUsername<T> {
  const _$ShortUsername({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.shortUsername(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.shortUsername'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortUsername<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShortUsernameCopyWith<T, _$ShortUsername<T>> get copyWith =>
      __$$ShortUsernameCopyWithImpl<T, _$ShortUsername<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) unexpected,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) passwordNotMatch,
    required TResult Function(T failedValue) shortUsername,
    required TResult Function(T failedValue) shortFirstName,
    required TResult Function(T failedValue) shortLastName,
    required TResult Function(T failedValue) shortCategoryName,
    required TResult Function(T failedValue) negativeBudgetAmount,
  }) {
    return shortUsername(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? unexpected,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? passwordNotMatch,
    TResult? Function(T failedValue)? shortUsername,
    TResult? Function(T failedValue)? shortFirstName,
    TResult? Function(T failedValue)? shortLastName,
    TResult? Function(T failedValue)? shortCategoryName,
    TResult? Function(T failedValue)? negativeBudgetAmount,
  }) {
    return shortUsername?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? unexpected,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordNotMatch,
    TResult Function(T failedValue)? shortUsername,
    TResult Function(T failedValue)? shortFirstName,
    TResult Function(T failedValue)? shortLastName,
    TResult Function(T failedValue)? shortCategoryName,
    TResult Function(T failedValue)? negativeBudgetAmount,
    required TResult orElse(),
  }) {
    if (shortUsername != null) {
      return shortUsername(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected<T> value) unexpected,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(PasswordsNotMatch<T> value) passwordNotMatch,
    required TResult Function(ShortUsername<T> value) shortUsername,
    required TResult Function(ShortFirstName<T> value) shortFirstName,
    required TResult Function(ShortLastName<T> value) shortLastName,
    required TResult Function(ShortCategoryName<T> value) shortCategoryName,
    required TResult Function(NegativeBudgetAmount<T> value)
        negativeBudgetAmount,
  }) {
    return shortUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unexpected<T> value)? unexpected,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(PasswordsNotMatch<T> value)? passwordNotMatch,
    TResult? Function(ShortUsername<T> value)? shortUsername,
    TResult? Function(ShortFirstName<T> value)? shortFirstName,
    TResult? Function(ShortLastName<T> value)? shortLastName,
    TResult? Function(ShortCategoryName<T> value)? shortCategoryName,
    TResult? Function(NegativeBudgetAmount<T> value)? negativeBudgetAmount,
  }) {
    return shortUsername?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected<T> value)? unexpected,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsNotMatch<T> value)? passwordNotMatch,
    TResult Function(ShortUsername<T> value)? shortUsername,
    TResult Function(ShortFirstName<T> value)? shortFirstName,
    TResult Function(ShortLastName<T> value)? shortLastName,
    TResult Function(ShortCategoryName<T> value)? shortCategoryName,
    TResult Function(NegativeBudgetAmount<T> value)? negativeBudgetAmount,
    required TResult orElse(),
  }) {
    if (shortUsername != null) {
      return shortUsername(this);
    }
    return orElse();
  }
}

abstract class ShortUsername<T> implements ValueFailure<T> {
  const factory ShortUsername({required final T failedValue}) =
      _$ShortUsername<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$ShortUsernameCopyWith<T, _$ShortUsername<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShortFirstNameCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ShortFirstNameCopyWith(
          _$ShortFirstName<T> value, $Res Function(_$ShortFirstName<T>) then) =
      __$$ShortFirstNameCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$ShortFirstNameCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ShortFirstName<T>>
    implements _$$ShortFirstNameCopyWith<T, $Res> {
  __$$ShortFirstNameCopyWithImpl(
      _$ShortFirstName<T> _value, $Res Function(_$ShortFirstName<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$ShortFirstName<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ShortFirstName<T>
    with DiagnosticableTreeMixin
    implements ShortFirstName<T> {
  const _$ShortFirstName({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.shortFirstName(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.shortFirstName'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortFirstName<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShortFirstNameCopyWith<T, _$ShortFirstName<T>> get copyWith =>
      __$$ShortFirstNameCopyWithImpl<T, _$ShortFirstName<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) unexpected,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) passwordNotMatch,
    required TResult Function(T failedValue) shortUsername,
    required TResult Function(T failedValue) shortFirstName,
    required TResult Function(T failedValue) shortLastName,
    required TResult Function(T failedValue) shortCategoryName,
    required TResult Function(T failedValue) negativeBudgetAmount,
  }) {
    return shortFirstName(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? unexpected,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? passwordNotMatch,
    TResult? Function(T failedValue)? shortUsername,
    TResult? Function(T failedValue)? shortFirstName,
    TResult? Function(T failedValue)? shortLastName,
    TResult? Function(T failedValue)? shortCategoryName,
    TResult? Function(T failedValue)? negativeBudgetAmount,
  }) {
    return shortFirstName?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? unexpected,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordNotMatch,
    TResult Function(T failedValue)? shortUsername,
    TResult Function(T failedValue)? shortFirstName,
    TResult Function(T failedValue)? shortLastName,
    TResult Function(T failedValue)? shortCategoryName,
    TResult Function(T failedValue)? negativeBudgetAmount,
    required TResult orElse(),
  }) {
    if (shortFirstName != null) {
      return shortFirstName(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected<T> value) unexpected,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(PasswordsNotMatch<T> value) passwordNotMatch,
    required TResult Function(ShortUsername<T> value) shortUsername,
    required TResult Function(ShortFirstName<T> value) shortFirstName,
    required TResult Function(ShortLastName<T> value) shortLastName,
    required TResult Function(ShortCategoryName<T> value) shortCategoryName,
    required TResult Function(NegativeBudgetAmount<T> value)
        negativeBudgetAmount,
  }) {
    return shortFirstName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unexpected<T> value)? unexpected,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(PasswordsNotMatch<T> value)? passwordNotMatch,
    TResult? Function(ShortUsername<T> value)? shortUsername,
    TResult? Function(ShortFirstName<T> value)? shortFirstName,
    TResult? Function(ShortLastName<T> value)? shortLastName,
    TResult? Function(ShortCategoryName<T> value)? shortCategoryName,
    TResult? Function(NegativeBudgetAmount<T> value)? negativeBudgetAmount,
  }) {
    return shortFirstName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected<T> value)? unexpected,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsNotMatch<T> value)? passwordNotMatch,
    TResult Function(ShortUsername<T> value)? shortUsername,
    TResult Function(ShortFirstName<T> value)? shortFirstName,
    TResult Function(ShortLastName<T> value)? shortLastName,
    TResult Function(ShortCategoryName<T> value)? shortCategoryName,
    TResult Function(NegativeBudgetAmount<T> value)? negativeBudgetAmount,
    required TResult orElse(),
  }) {
    if (shortFirstName != null) {
      return shortFirstName(this);
    }
    return orElse();
  }
}

abstract class ShortFirstName<T> implements ValueFailure<T> {
  const factory ShortFirstName({required final T failedValue}) =
      _$ShortFirstName<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$ShortFirstNameCopyWith<T, _$ShortFirstName<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShortLastNameCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ShortLastNameCopyWith(
          _$ShortLastName<T> value, $Res Function(_$ShortLastName<T>) then) =
      __$$ShortLastNameCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$ShortLastNameCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ShortLastName<T>>
    implements _$$ShortLastNameCopyWith<T, $Res> {
  __$$ShortLastNameCopyWithImpl(
      _$ShortLastName<T> _value, $Res Function(_$ShortLastName<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$ShortLastName<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ShortLastName<T>
    with DiagnosticableTreeMixin
    implements ShortLastName<T> {
  const _$ShortLastName({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.shortLastName(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.shortLastName'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortLastName<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShortLastNameCopyWith<T, _$ShortLastName<T>> get copyWith =>
      __$$ShortLastNameCopyWithImpl<T, _$ShortLastName<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) unexpected,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) passwordNotMatch,
    required TResult Function(T failedValue) shortUsername,
    required TResult Function(T failedValue) shortFirstName,
    required TResult Function(T failedValue) shortLastName,
    required TResult Function(T failedValue) shortCategoryName,
    required TResult Function(T failedValue) negativeBudgetAmount,
  }) {
    return shortLastName(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? unexpected,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? passwordNotMatch,
    TResult? Function(T failedValue)? shortUsername,
    TResult? Function(T failedValue)? shortFirstName,
    TResult? Function(T failedValue)? shortLastName,
    TResult? Function(T failedValue)? shortCategoryName,
    TResult? Function(T failedValue)? negativeBudgetAmount,
  }) {
    return shortLastName?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? unexpected,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordNotMatch,
    TResult Function(T failedValue)? shortUsername,
    TResult Function(T failedValue)? shortFirstName,
    TResult Function(T failedValue)? shortLastName,
    TResult Function(T failedValue)? shortCategoryName,
    TResult Function(T failedValue)? negativeBudgetAmount,
    required TResult orElse(),
  }) {
    if (shortLastName != null) {
      return shortLastName(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected<T> value) unexpected,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(PasswordsNotMatch<T> value) passwordNotMatch,
    required TResult Function(ShortUsername<T> value) shortUsername,
    required TResult Function(ShortFirstName<T> value) shortFirstName,
    required TResult Function(ShortLastName<T> value) shortLastName,
    required TResult Function(ShortCategoryName<T> value) shortCategoryName,
    required TResult Function(NegativeBudgetAmount<T> value)
        negativeBudgetAmount,
  }) {
    return shortLastName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unexpected<T> value)? unexpected,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(PasswordsNotMatch<T> value)? passwordNotMatch,
    TResult? Function(ShortUsername<T> value)? shortUsername,
    TResult? Function(ShortFirstName<T> value)? shortFirstName,
    TResult? Function(ShortLastName<T> value)? shortLastName,
    TResult? Function(ShortCategoryName<T> value)? shortCategoryName,
    TResult? Function(NegativeBudgetAmount<T> value)? negativeBudgetAmount,
  }) {
    return shortLastName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected<T> value)? unexpected,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsNotMatch<T> value)? passwordNotMatch,
    TResult Function(ShortUsername<T> value)? shortUsername,
    TResult Function(ShortFirstName<T> value)? shortFirstName,
    TResult Function(ShortLastName<T> value)? shortLastName,
    TResult Function(ShortCategoryName<T> value)? shortCategoryName,
    TResult Function(NegativeBudgetAmount<T> value)? negativeBudgetAmount,
    required TResult orElse(),
  }) {
    if (shortLastName != null) {
      return shortLastName(this);
    }
    return orElse();
  }
}

abstract class ShortLastName<T> implements ValueFailure<T> {
  const factory ShortLastName({required final T failedValue}) =
      _$ShortLastName<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$ShortLastNameCopyWith<T, _$ShortLastName<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShortCategoryNameCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ShortCategoryNameCopyWith(_$ShortCategoryName<T> value,
          $Res Function(_$ShortCategoryName<T>) then) =
      __$$ShortCategoryNameCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$ShortCategoryNameCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ShortCategoryName<T>>
    implements _$$ShortCategoryNameCopyWith<T, $Res> {
  __$$ShortCategoryNameCopyWithImpl(_$ShortCategoryName<T> _value,
      $Res Function(_$ShortCategoryName<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$ShortCategoryName<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ShortCategoryName<T>
    with DiagnosticableTreeMixin
    implements ShortCategoryName<T> {
  const _$ShortCategoryName({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.shortCategoryName(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.shortCategoryName'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortCategoryName<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShortCategoryNameCopyWith<T, _$ShortCategoryName<T>> get copyWith =>
      __$$ShortCategoryNameCopyWithImpl<T, _$ShortCategoryName<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) unexpected,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) passwordNotMatch,
    required TResult Function(T failedValue) shortUsername,
    required TResult Function(T failedValue) shortFirstName,
    required TResult Function(T failedValue) shortLastName,
    required TResult Function(T failedValue) shortCategoryName,
    required TResult Function(T failedValue) negativeBudgetAmount,
  }) {
    return shortCategoryName(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? unexpected,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? passwordNotMatch,
    TResult? Function(T failedValue)? shortUsername,
    TResult? Function(T failedValue)? shortFirstName,
    TResult? Function(T failedValue)? shortLastName,
    TResult? Function(T failedValue)? shortCategoryName,
    TResult? Function(T failedValue)? negativeBudgetAmount,
  }) {
    return shortCategoryName?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? unexpected,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordNotMatch,
    TResult Function(T failedValue)? shortUsername,
    TResult Function(T failedValue)? shortFirstName,
    TResult Function(T failedValue)? shortLastName,
    TResult Function(T failedValue)? shortCategoryName,
    TResult Function(T failedValue)? negativeBudgetAmount,
    required TResult orElse(),
  }) {
    if (shortCategoryName != null) {
      return shortCategoryName(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected<T> value) unexpected,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(PasswordsNotMatch<T> value) passwordNotMatch,
    required TResult Function(ShortUsername<T> value) shortUsername,
    required TResult Function(ShortFirstName<T> value) shortFirstName,
    required TResult Function(ShortLastName<T> value) shortLastName,
    required TResult Function(ShortCategoryName<T> value) shortCategoryName,
    required TResult Function(NegativeBudgetAmount<T> value)
        negativeBudgetAmount,
  }) {
    return shortCategoryName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unexpected<T> value)? unexpected,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(PasswordsNotMatch<T> value)? passwordNotMatch,
    TResult? Function(ShortUsername<T> value)? shortUsername,
    TResult? Function(ShortFirstName<T> value)? shortFirstName,
    TResult? Function(ShortLastName<T> value)? shortLastName,
    TResult? Function(ShortCategoryName<T> value)? shortCategoryName,
    TResult? Function(NegativeBudgetAmount<T> value)? negativeBudgetAmount,
  }) {
    return shortCategoryName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected<T> value)? unexpected,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsNotMatch<T> value)? passwordNotMatch,
    TResult Function(ShortUsername<T> value)? shortUsername,
    TResult Function(ShortFirstName<T> value)? shortFirstName,
    TResult Function(ShortLastName<T> value)? shortLastName,
    TResult Function(ShortCategoryName<T> value)? shortCategoryName,
    TResult Function(NegativeBudgetAmount<T> value)? negativeBudgetAmount,
    required TResult orElse(),
  }) {
    if (shortCategoryName != null) {
      return shortCategoryName(this);
    }
    return orElse();
  }
}

abstract class ShortCategoryName<T> implements ValueFailure<T> {
  const factory ShortCategoryName({required final T failedValue}) =
      _$ShortCategoryName<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$ShortCategoryNameCopyWith<T, _$ShortCategoryName<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NegativeBudgetAmountCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$NegativeBudgetAmountCopyWith(_$NegativeBudgetAmount<T> value,
          $Res Function(_$NegativeBudgetAmount<T>) then) =
      __$$NegativeBudgetAmountCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$NegativeBudgetAmountCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$NegativeBudgetAmount<T>>
    implements _$$NegativeBudgetAmountCopyWith<T, $Res> {
  __$$NegativeBudgetAmountCopyWithImpl(_$NegativeBudgetAmount<T> _value,
      $Res Function(_$NegativeBudgetAmount<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$NegativeBudgetAmount<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$NegativeBudgetAmount<T>
    with DiagnosticableTreeMixin
    implements NegativeBudgetAmount<T> {
  const _$NegativeBudgetAmount({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.negativeBudgetAmount(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'ValueFailure<$T>.negativeBudgetAmount'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NegativeBudgetAmount<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NegativeBudgetAmountCopyWith<T, _$NegativeBudgetAmount<T>> get copyWith =>
      __$$NegativeBudgetAmountCopyWithImpl<T, _$NegativeBudgetAmount<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) unexpected,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) passwordNotMatch,
    required TResult Function(T failedValue) shortUsername,
    required TResult Function(T failedValue) shortFirstName,
    required TResult Function(T failedValue) shortLastName,
    required TResult Function(T failedValue) shortCategoryName,
    required TResult Function(T failedValue) negativeBudgetAmount,
  }) {
    return negativeBudgetAmount(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? unexpected,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? passwordNotMatch,
    TResult? Function(T failedValue)? shortUsername,
    TResult? Function(T failedValue)? shortFirstName,
    TResult? Function(T failedValue)? shortLastName,
    TResult? Function(T failedValue)? shortCategoryName,
    TResult? Function(T failedValue)? negativeBudgetAmount,
  }) {
    return negativeBudgetAmount?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? unexpected,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordNotMatch,
    TResult Function(T failedValue)? shortUsername,
    TResult Function(T failedValue)? shortFirstName,
    TResult Function(T failedValue)? shortLastName,
    TResult Function(T failedValue)? shortCategoryName,
    TResult Function(T failedValue)? negativeBudgetAmount,
    required TResult orElse(),
  }) {
    if (negativeBudgetAmount != null) {
      return negativeBudgetAmount(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected<T> value) unexpected,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(PasswordsNotMatch<T> value) passwordNotMatch,
    required TResult Function(ShortUsername<T> value) shortUsername,
    required TResult Function(ShortFirstName<T> value) shortFirstName,
    required TResult Function(ShortLastName<T> value) shortLastName,
    required TResult Function(ShortCategoryName<T> value) shortCategoryName,
    required TResult Function(NegativeBudgetAmount<T> value)
        negativeBudgetAmount,
  }) {
    return negativeBudgetAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unexpected<T> value)? unexpected,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(PasswordsNotMatch<T> value)? passwordNotMatch,
    TResult? Function(ShortUsername<T> value)? shortUsername,
    TResult? Function(ShortFirstName<T> value)? shortFirstName,
    TResult? Function(ShortLastName<T> value)? shortLastName,
    TResult? Function(ShortCategoryName<T> value)? shortCategoryName,
    TResult? Function(NegativeBudgetAmount<T> value)? negativeBudgetAmount,
  }) {
    return negativeBudgetAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected<T> value)? unexpected,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsNotMatch<T> value)? passwordNotMatch,
    TResult Function(ShortUsername<T> value)? shortUsername,
    TResult Function(ShortFirstName<T> value)? shortFirstName,
    TResult Function(ShortLastName<T> value)? shortLastName,
    TResult Function(ShortCategoryName<T> value)? shortCategoryName,
    TResult Function(NegativeBudgetAmount<T> value)? negativeBudgetAmount,
    required TResult orElse(),
  }) {
    if (negativeBudgetAmount != null) {
      return negativeBudgetAmount(this);
    }
    return orElse();
  }
}

abstract class NegativeBudgetAmount<T> implements ValueFailure<T> {
  const factory NegativeBudgetAmount({required final T failedValue}) =
      _$NegativeBudgetAmount<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$NegativeBudgetAmountCopyWith<T, _$NegativeBudgetAmount<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

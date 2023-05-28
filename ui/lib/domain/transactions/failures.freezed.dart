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
mixin _$ExpenseFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() notFound,
    required TResult Function() serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? notFound,
    TResult? Function()? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? notFound,
    TResult Function()? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExpenseUnexpected value) unexpected,
    required TResult Function(_ExpenseNotFound value) notFound,
    required TResult Function(_ExpenseServerError value) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExpenseUnexpected value)? unexpected,
    TResult? Function(_ExpenseNotFound value)? notFound,
    TResult? Function(_ExpenseServerError value)? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExpenseUnexpected value)? unexpected,
    TResult Function(_ExpenseNotFound value)? notFound,
    TResult Function(_ExpenseServerError value)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseFailureCopyWith<$Res> {
  factory $ExpenseFailureCopyWith(
          ExpenseFailure value, $Res Function(ExpenseFailure) then) =
      _$ExpenseFailureCopyWithImpl<$Res, ExpenseFailure>;
}

/// @nodoc
class _$ExpenseFailureCopyWithImpl<$Res, $Val extends ExpenseFailure>
    implements $ExpenseFailureCopyWith<$Res> {
  _$ExpenseFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ExpenseUnexpectedCopyWith<$Res> {
  factory _$$_ExpenseUnexpectedCopyWith(_$_ExpenseUnexpected value,
          $Res Function(_$_ExpenseUnexpected) then) =
      __$$_ExpenseUnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ExpenseUnexpectedCopyWithImpl<$Res>
    extends _$ExpenseFailureCopyWithImpl<$Res, _$_ExpenseUnexpected>
    implements _$$_ExpenseUnexpectedCopyWith<$Res> {
  __$$_ExpenseUnexpectedCopyWithImpl(
      _$_ExpenseUnexpected _value, $Res Function(_$_ExpenseUnexpected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ExpenseUnexpected implements _ExpenseUnexpected {
  const _$_ExpenseUnexpected();

  @override
  String toString() {
    return 'ExpenseFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ExpenseUnexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() notFound,
    required TResult Function() serverError,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? notFound,
    TResult? Function()? serverError,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? notFound,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExpenseUnexpected value) unexpected,
    required TResult Function(_ExpenseNotFound value) notFound,
    required TResult Function(_ExpenseServerError value) serverError,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExpenseUnexpected value)? unexpected,
    TResult? Function(_ExpenseNotFound value)? notFound,
    TResult? Function(_ExpenseServerError value)? serverError,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExpenseUnexpected value)? unexpected,
    TResult Function(_ExpenseNotFound value)? notFound,
    TResult Function(_ExpenseServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _ExpenseUnexpected implements ExpenseFailure {
  const factory _ExpenseUnexpected() = _$_ExpenseUnexpected;
}

/// @nodoc
abstract class _$$_ExpenseNotFoundCopyWith<$Res> {
  factory _$$_ExpenseNotFoundCopyWith(
          _$_ExpenseNotFound value, $Res Function(_$_ExpenseNotFound) then) =
      __$$_ExpenseNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ExpenseNotFoundCopyWithImpl<$Res>
    extends _$ExpenseFailureCopyWithImpl<$Res, _$_ExpenseNotFound>
    implements _$$_ExpenseNotFoundCopyWith<$Res> {
  __$$_ExpenseNotFoundCopyWithImpl(
      _$_ExpenseNotFound _value, $Res Function(_$_ExpenseNotFound) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ExpenseNotFound implements _ExpenseNotFound {
  const _$_ExpenseNotFound();

  @override
  String toString() {
    return 'ExpenseFailure.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ExpenseNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() notFound,
    required TResult Function() serverError,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? notFound,
    TResult? Function()? serverError,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? notFound,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExpenseUnexpected value) unexpected,
    required TResult Function(_ExpenseNotFound value) notFound,
    required TResult Function(_ExpenseServerError value) serverError,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExpenseUnexpected value)? unexpected,
    TResult? Function(_ExpenseNotFound value)? notFound,
    TResult? Function(_ExpenseServerError value)? serverError,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExpenseUnexpected value)? unexpected,
    TResult Function(_ExpenseNotFound value)? notFound,
    TResult Function(_ExpenseServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _ExpenseNotFound implements ExpenseFailure {
  const factory _ExpenseNotFound() = _$_ExpenseNotFound;
}

/// @nodoc
abstract class _$$_ExpenseServerErrorCopyWith<$Res> {
  factory _$$_ExpenseServerErrorCopyWith(_$_ExpenseServerError value,
          $Res Function(_$_ExpenseServerError) then) =
      __$$_ExpenseServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ExpenseServerErrorCopyWithImpl<$Res>
    extends _$ExpenseFailureCopyWithImpl<$Res, _$_ExpenseServerError>
    implements _$$_ExpenseServerErrorCopyWith<$Res> {
  __$$_ExpenseServerErrorCopyWithImpl(
      _$_ExpenseServerError _value, $Res Function(_$_ExpenseServerError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ExpenseServerError implements _ExpenseServerError {
  const _$_ExpenseServerError();

  @override
  String toString() {
    return 'ExpenseFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ExpenseServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() notFound,
    required TResult Function() serverError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? notFound,
    TResult? Function()? serverError,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? notFound,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExpenseUnexpected value) unexpected,
    required TResult Function(_ExpenseNotFound value) notFound,
    required TResult Function(_ExpenseServerError value) serverError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExpenseUnexpected value)? unexpected,
    TResult? Function(_ExpenseNotFound value)? notFound,
    TResult? Function(_ExpenseServerError value)? serverError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExpenseUnexpected value)? unexpected,
    TResult Function(_ExpenseNotFound value)? notFound,
    TResult Function(_ExpenseServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ExpenseServerError implements ExpenseFailure {
  const factory _ExpenseServerError() = _$_ExpenseServerError;
}

/// @nodoc
mixin _$IncomeFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() notFound,
    required TResult Function() serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? notFound,
    TResult? Function()? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? notFound,
    TResult Function()? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncomeUnexpected value) unexpected,
    required TResult Function(_IncomeNotFound value) notFound,
    required TResult Function(_IncomeServerError value) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncomeUnexpected value)? unexpected,
    TResult? Function(_IncomeNotFound value)? notFound,
    TResult? Function(_IncomeServerError value)? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncomeUnexpected value)? unexpected,
    TResult Function(_IncomeNotFound value)? notFound,
    TResult Function(_IncomeServerError value)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomeFailureCopyWith<$Res> {
  factory $IncomeFailureCopyWith(
          IncomeFailure value, $Res Function(IncomeFailure) then) =
      _$IncomeFailureCopyWithImpl<$Res, IncomeFailure>;
}

/// @nodoc
class _$IncomeFailureCopyWithImpl<$Res, $Val extends IncomeFailure>
    implements $IncomeFailureCopyWith<$Res> {
  _$IncomeFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_IncomeUnexpectedCopyWith<$Res> {
  factory _$$_IncomeUnexpectedCopyWith(
          _$_IncomeUnexpected value, $Res Function(_$_IncomeUnexpected) then) =
      __$$_IncomeUnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IncomeUnexpectedCopyWithImpl<$Res>
    extends _$IncomeFailureCopyWithImpl<$Res, _$_IncomeUnexpected>
    implements _$$_IncomeUnexpectedCopyWith<$Res> {
  __$$_IncomeUnexpectedCopyWithImpl(
      _$_IncomeUnexpected _value, $Res Function(_$_IncomeUnexpected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_IncomeUnexpected implements _IncomeUnexpected {
  const _$_IncomeUnexpected();

  @override
  String toString() {
    return 'IncomeFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_IncomeUnexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() notFound,
    required TResult Function() serverError,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? notFound,
    TResult? Function()? serverError,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? notFound,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncomeUnexpected value) unexpected,
    required TResult Function(_IncomeNotFound value) notFound,
    required TResult Function(_IncomeServerError value) serverError,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncomeUnexpected value)? unexpected,
    TResult? Function(_IncomeNotFound value)? notFound,
    TResult? Function(_IncomeServerError value)? serverError,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncomeUnexpected value)? unexpected,
    TResult Function(_IncomeNotFound value)? notFound,
    TResult Function(_IncomeServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _IncomeUnexpected implements IncomeFailure {
  const factory _IncomeUnexpected() = _$_IncomeUnexpected;
}

/// @nodoc
abstract class _$$_IncomeNotFoundCopyWith<$Res> {
  factory _$$_IncomeNotFoundCopyWith(
          _$_IncomeNotFound value, $Res Function(_$_IncomeNotFound) then) =
      __$$_IncomeNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IncomeNotFoundCopyWithImpl<$Res>
    extends _$IncomeFailureCopyWithImpl<$Res, _$_IncomeNotFound>
    implements _$$_IncomeNotFoundCopyWith<$Res> {
  __$$_IncomeNotFoundCopyWithImpl(
      _$_IncomeNotFound _value, $Res Function(_$_IncomeNotFound) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_IncomeNotFound implements _IncomeNotFound {
  const _$_IncomeNotFound();

  @override
  String toString() {
    return 'IncomeFailure.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_IncomeNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() notFound,
    required TResult Function() serverError,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? notFound,
    TResult? Function()? serverError,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? notFound,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncomeUnexpected value) unexpected,
    required TResult Function(_IncomeNotFound value) notFound,
    required TResult Function(_IncomeServerError value) serverError,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncomeUnexpected value)? unexpected,
    TResult? Function(_IncomeNotFound value)? notFound,
    TResult? Function(_IncomeServerError value)? serverError,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncomeUnexpected value)? unexpected,
    TResult Function(_IncomeNotFound value)? notFound,
    TResult Function(_IncomeServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _IncomeNotFound implements IncomeFailure {
  const factory _IncomeNotFound() = _$_IncomeNotFound;
}

/// @nodoc
abstract class _$$_IncomeServerErrorCopyWith<$Res> {
  factory _$$_IncomeServerErrorCopyWith(_$_IncomeServerError value,
          $Res Function(_$_IncomeServerError) then) =
      __$$_IncomeServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IncomeServerErrorCopyWithImpl<$Res>
    extends _$IncomeFailureCopyWithImpl<$Res, _$_IncomeServerError>
    implements _$$_IncomeServerErrorCopyWith<$Res> {
  __$$_IncomeServerErrorCopyWithImpl(
      _$_IncomeServerError _value, $Res Function(_$_IncomeServerError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_IncomeServerError implements _IncomeServerError {
  const _$_IncomeServerError();

  @override
  String toString() {
    return 'IncomeFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_IncomeServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() notFound,
    required TResult Function() serverError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? notFound,
    TResult? Function()? serverError,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? notFound,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncomeUnexpected value) unexpected,
    required TResult Function(_IncomeNotFound value) notFound,
    required TResult Function(_IncomeServerError value) serverError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncomeUnexpected value)? unexpected,
    TResult? Function(_IncomeNotFound value)? notFound,
    TResult? Function(_IncomeServerError value)? serverError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncomeUnexpected value)? unexpected,
    TResult Function(_IncomeNotFound value)? notFound,
    TResult Function(_IncomeServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _IncomeServerError implements IncomeFailure {
  const factory _IncomeServerError() = _$_IncomeServerError;
}

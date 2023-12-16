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
    required TResult Function() categoryNotSelected,
    required TResult Function() serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? notFound,
    TResult? Function()? categoryNotSelected,
    TResult? Function()? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? notFound,
    TResult Function()? categoryNotSelected,
    TResult Function()? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExpenseUnexpected value) unexpected,
    required TResult Function(_ExpenseNotFound value) notFound,
    required TResult Function(_ExpenseCategoryNotSelected value)
        categoryNotSelected,
    required TResult Function(_ExpenseServerError value) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExpenseUnexpected value)? unexpected,
    TResult? Function(_ExpenseNotFound value)? notFound,
    TResult? Function(_ExpenseCategoryNotSelected value)? categoryNotSelected,
    TResult? Function(_ExpenseServerError value)? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExpenseUnexpected value)? unexpected,
    TResult Function(_ExpenseNotFound value)? notFound,
    TResult Function(_ExpenseCategoryNotSelected value)? categoryNotSelected,
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
abstract class _$$ExpenseUnexpectedImplCopyWith<$Res> {
  factory _$$ExpenseUnexpectedImplCopyWith(_$ExpenseUnexpectedImpl value,
          $Res Function(_$ExpenseUnexpectedImpl) then) =
      __$$ExpenseUnexpectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExpenseUnexpectedImplCopyWithImpl<$Res>
    extends _$ExpenseFailureCopyWithImpl<$Res, _$ExpenseUnexpectedImpl>
    implements _$$ExpenseUnexpectedImplCopyWith<$Res> {
  __$$ExpenseUnexpectedImplCopyWithImpl(_$ExpenseUnexpectedImpl _value,
      $Res Function(_$ExpenseUnexpectedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ExpenseUnexpectedImpl implements _ExpenseUnexpected {
  const _$ExpenseUnexpectedImpl();

  @override
  String toString() {
    return 'ExpenseFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExpenseUnexpectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() notFound,
    required TResult Function() categoryNotSelected,
    required TResult Function() serverError,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? notFound,
    TResult? Function()? categoryNotSelected,
    TResult? Function()? serverError,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? notFound,
    TResult Function()? categoryNotSelected,
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
    required TResult Function(_ExpenseCategoryNotSelected value)
        categoryNotSelected,
    required TResult Function(_ExpenseServerError value) serverError,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExpenseUnexpected value)? unexpected,
    TResult? Function(_ExpenseNotFound value)? notFound,
    TResult? Function(_ExpenseCategoryNotSelected value)? categoryNotSelected,
    TResult? Function(_ExpenseServerError value)? serverError,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExpenseUnexpected value)? unexpected,
    TResult Function(_ExpenseNotFound value)? notFound,
    TResult Function(_ExpenseCategoryNotSelected value)? categoryNotSelected,
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
  const factory _ExpenseUnexpected() = _$ExpenseUnexpectedImpl;
}

/// @nodoc
abstract class _$$ExpenseNotFoundImplCopyWith<$Res> {
  factory _$$ExpenseNotFoundImplCopyWith(_$ExpenseNotFoundImpl value,
          $Res Function(_$ExpenseNotFoundImpl) then) =
      __$$ExpenseNotFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExpenseNotFoundImplCopyWithImpl<$Res>
    extends _$ExpenseFailureCopyWithImpl<$Res, _$ExpenseNotFoundImpl>
    implements _$$ExpenseNotFoundImplCopyWith<$Res> {
  __$$ExpenseNotFoundImplCopyWithImpl(
      _$ExpenseNotFoundImpl _value, $Res Function(_$ExpenseNotFoundImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ExpenseNotFoundImpl implements _ExpenseNotFound {
  const _$ExpenseNotFoundImpl();

  @override
  String toString() {
    return 'ExpenseFailure.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExpenseNotFoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() notFound,
    required TResult Function() categoryNotSelected,
    required TResult Function() serverError,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? notFound,
    TResult? Function()? categoryNotSelected,
    TResult? Function()? serverError,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? notFound,
    TResult Function()? categoryNotSelected,
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
    required TResult Function(_ExpenseCategoryNotSelected value)
        categoryNotSelected,
    required TResult Function(_ExpenseServerError value) serverError,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExpenseUnexpected value)? unexpected,
    TResult? Function(_ExpenseNotFound value)? notFound,
    TResult? Function(_ExpenseCategoryNotSelected value)? categoryNotSelected,
    TResult? Function(_ExpenseServerError value)? serverError,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExpenseUnexpected value)? unexpected,
    TResult Function(_ExpenseNotFound value)? notFound,
    TResult Function(_ExpenseCategoryNotSelected value)? categoryNotSelected,
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
  const factory _ExpenseNotFound() = _$ExpenseNotFoundImpl;
}

/// @nodoc
abstract class _$$ExpenseCategoryNotSelectedImplCopyWith<$Res> {
  factory _$$ExpenseCategoryNotSelectedImplCopyWith(
          _$ExpenseCategoryNotSelectedImpl value,
          $Res Function(_$ExpenseCategoryNotSelectedImpl) then) =
      __$$ExpenseCategoryNotSelectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExpenseCategoryNotSelectedImplCopyWithImpl<$Res>
    extends _$ExpenseFailureCopyWithImpl<$Res, _$ExpenseCategoryNotSelectedImpl>
    implements _$$ExpenseCategoryNotSelectedImplCopyWith<$Res> {
  __$$ExpenseCategoryNotSelectedImplCopyWithImpl(
      _$ExpenseCategoryNotSelectedImpl _value,
      $Res Function(_$ExpenseCategoryNotSelectedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ExpenseCategoryNotSelectedImpl implements _ExpenseCategoryNotSelected {
  const _$ExpenseCategoryNotSelectedImpl();

  @override
  String toString() {
    return 'ExpenseFailure.categoryNotSelected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseCategoryNotSelectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() notFound,
    required TResult Function() categoryNotSelected,
    required TResult Function() serverError,
  }) {
    return categoryNotSelected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? notFound,
    TResult? Function()? categoryNotSelected,
    TResult? Function()? serverError,
  }) {
    return categoryNotSelected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? notFound,
    TResult Function()? categoryNotSelected,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (categoryNotSelected != null) {
      return categoryNotSelected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExpenseUnexpected value) unexpected,
    required TResult Function(_ExpenseNotFound value) notFound,
    required TResult Function(_ExpenseCategoryNotSelected value)
        categoryNotSelected,
    required TResult Function(_ExpenseServerError value) serverError,
  }) {
    return categoryNotSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExpenseUnexpected value)? unexpected,
    TResult? Function(_ExpenseNotFound value)? notFound,
    TResult? Function(_ExpenseCategoryNotSelected value)? categoryNotSelected,
    TResult? Function(_ExpenseServerError value)? serverError,
  }) {
    return categoryNotSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExpenseUnexpected value)? unexpected,
    TResult Function(_ExpenseNotFound value)? notFound,
    TResult Function(_ExpenseCategoryNotSelected value)? categoryNotSelected,
    TResult Function(_ExpenseServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (categoryNotSelected != null) {
      return categoryNotSelected(this);
    }
    return orElse();
  }
}

abstract class _ExpenseCategoryNotSelected implements ExpenseFailure {
  const factory _ExpenseCategoryNotSelected() =
      _$ExpenseCategoryNotSelectedImpl;
}

/// @nodoc
abstract class _$$ExpenseServerErrorImplCopyWith<$Res> {
  factory _$$ExpenseServerErrorImplCopyWith(_$ExpenseServerErrorImpl value,
          $Res Function(_$ExpenseServerErrorImpl) then) =
      __$$ExpenseServerErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExpenseServerErrorImplCopyWithImpl<$Res>
    extends _$ExpenseFailureCopyWithImpl<$Res, _$ExpenseServerErrorImpl>
    implements _$$ExpenseServerErrorImplCopyWith<$Res> {
  __$$ExpenseServerErrorImplCopyWithImpl(_$ExpenseServerErrorImpl _value,
      $Res Function(_$ExpenseServerErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ExpenseServerErrorImpl implements _ExpenseServerError {
  const _$ExpenseServerErrorImpl();

  @override
  String toString() {
    return 'ExpenseFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExpenseServerErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() notFound,
    required TResult Function() categoryNotSelected,
    required TResult Function() serverError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? notFound,
    TResult? Function()? categoryNotSelected,
    TResult? Function()? serverError,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? notFound,
    TResult Function()? categoryNotSelected,
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
    required TResult Function(_ExpenseCategoryNotSelected value)
        categoryNotSelected,
    required TResult Function(_ExpenseServerError value) serverError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExpenseUnexpected value)? unexpected,
    TResult? Function(_ExpenseNotFound value)? notFound,
    TResult? Function(_ExpenseCategoryNotSelected value)? categoryNotSelected,
    TResult? Function(_ExpenseServerError value)? serverError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExpenseUnexpected value)? unexpected,
    TResult Function(_ExpenseNotFound value)? notFound,
    TResult Function(_ExpenseCategoryNotSelected value)? categoryNotSelected,
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
  const factory _ExpenseServerError() = _$ExpenseServerErrorImpl;
}

/// @nodoc
mixin _$IncomeFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() notFound,
    required TResult Function() categoryNotSelected,
    required TResult Function() serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? notFound,
    TResult? Function()? categoryNotSelected,
    TResult? Function()? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? notFound,
    TResult Function()? categoryNotSelected,
    TResult Function()? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncomeUnexpected value) unexpected,
    required TResult Function(_IncomeNotFound value) notFound,
    required TResult Function(_IncomeCategoryNotSelected value)
        categoryNotSelected,
    required TResult Function(_IncomeServerError value) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncomeUnexpected value)? unexpected,
    TResult? Function(_IncomeNotFound value)? notFound,
    TResult? Function(_IncomeCategoryNotSelected value)? categoryNotSelected,
    TResult? Function(_IncomeServerError value)? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncomeUnexpected value)? unexpected,
    TResult Function(_IncomeNotFound value)? notFound,
    TResult Function(_IncomeCategoryNotSelected value)? categoryNotSelected,
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
abstract class _$$IncomeUnexpectedImplCopyWith<$Res> {
  factory _$$IncomeUnexpectedImplCopyWith(_$IncomeUnexpectedImpl value,
          $Res Function(_$IncomeUnexpectedImpl) then) =
      __$$IncomeUnexpectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IncomeUnexpectedImplCopyWithImpl<$Res>
    extends _$IncomeFailureCopyWithImpl<$Res, _$IncomeUnexpectedImpl>
    implements _$$IncomeUnexpectedImplCopyWith<$Res> {
  __$$IncomeUnexpectedImplCopyWithImpl(_$IncomeUnexpectedImpl _value,
      $Res Function(_$IncomeUnexpectedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IncomeUnexpectedImpl implements _IncomeUnexpected {
  const _$IncomeUnexpectedImpl();

  @override
  String toString() {
    return 'IncomeFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IncomeUnexpectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() notFound,
    required TResult Function() categoryNotSelected,
    required TResult Function() serverError,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? notFound,
    TResult? Function()? categoryNotSelected,
    TResult? Function()? serverError,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? notFound,
    TResult Function()? categoryNotSelected,
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
    required TResult Function(_IncomeCategoryNotSelected value)
        categoryNotSelected,
    required TResult Function(_IncomeServerError value) serverError,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncomeUnexpected value)? unexpected,
    TResult? Function(_IncomeNotFound value)? notFound,
    TResult? Function(_IncomeCategoryNotSelected value)? categoryNotSelected,
    TResult? Function(_IncomeServerError value)? serverError,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncomeUnexpected value)? unexpected,
    TResult Function(_IncomeNotFound value)? notFound,
    TResult Function(_IncomeCategoryNotSelected value)? categoryNotSelected,
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
  const factory _IncomeUnexpected() = _$IncomeUnexpectedImpl;
}

/// @nodoc
abstract class _$$IncomeNotFoundImplCopyWith<$Res> {
  factory _$$IncomeNotFoundImplCopyWith(_$IncomeNotFoundImpl value,
          $Res Function(_$IncomeNotFoundImpl) then) =
      __$$IncomeNotFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IncomeNotFoundImplCopyWithImpl<$Res>
    extends _$IncomeFailureCopyWithImpl<$Res, _$IncomeNotFoundImpl>
    implements _$$IncomeNotFoundImplCopyWith<$Res> {
  __$$IncomeNotFoundImplCopyWithImpl(
      _$IncomeNotFoundImpl _value, $Res Function(_$IncomeNotFoundImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IncomeNotFoundImpl implements _IncomeNotFound {
  const _$IncomeNotFoundImpl();

  @override
  String toString() {
    return 'IncomeFailure.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IncomeNotFoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() notFound,
    required TResult Function() categoryNotSelected,
    required TResult Function() serverError,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? notFound,
    TResult? Function()? categoryNotSelected,
    TResult? Function()? serverError,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? notFound,
    TResult Function()? categoryNotSelected,
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
    required TResult Function(_IncomeCategoryNotSelected value)
        categoryNotSelected,
    required TResult Function(_IncomeServerError value) serverError,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncomeUnexpected value)? unexpected,
    TResult? Function(_IncomeNotFound value)? notFound,
    TResult? Function(_IncomeCategoryNotSelected value)? categoryNotSelected,
    TResult? Function(_IncomeServerError value)? serverError,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncomeUnexpected value)? unexpected,
    TResult Function(_IncomeNotFound value)? notFound,
    TResult Function(_IncomeCategoryNotSelected value)? categoryNotSelected,
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
  const factory _IncomeNotFound() = _$IncomeNotFoundImpl;
}

/// @nodoc
abstract class _$$IncomeCategoryNotSelectedImplCopyWith<$Res> {
  factory _$$IncomeCategoryNotSelectedImplCopyWith(
          _$IncomeCategoryNotSelectedImpl value,
          $Res Function(_$IncomeCategoryNotSelectedImpl) then) =
      __$$IncomeCategoryNotSelectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IncomeCategoryNotSelectedImplCopyWithImpl<$Res>
    extends _$IncomeFailureCopyWithImpl<$Res, _$IncomeCategoryNotSelectedImpl>
    implements _$$IncomeCategoryNotSelectedImplCopyWith<$Res> {
  __$$IncomeCategoryNotSelectedImplCopyWithImpl(
      _$IncomeCategoryNotSelectedImpl _value,
      $Res Function(_$IncomeCategoryNotSelectedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IncomeCategoryNotSelectedImpl implements _IncomeCategoryNotSelected {
  const _$IncomeCategoryNotSelectedImpl();

  @override
  String toString() {
    return 'IncomeFailure.categoryNotSelected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncomeCategoryNotSelectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() notFound,
    required TResult Function() categoryNotSelected,
    required TResult Function() serverError,
  }) {
    return categoryNotSelected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? notFound,
    TResult? Function()? categoryNotSelected,
    TResult? Function()? serverError,
  }) {
    return categoryNotSelected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? notFound,
    TResult Function()? categoryNotSelected,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (categoryNotSelected != null) {
      return categoryNotSelected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncomeUnexpected value) unexpected,
    required TResult Function(_IncomeNotFound value) notFound,
    required TResult Function(_IncomeCategoryNotSelected value)
        categoryNotSelected,
    required TResult Function(_IncomeServerError value) serverError,
  }) {
    return categoryNotSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncomeUnexpected value)? unexpected,
    TResult? Function(_IncomeNotFound value)? notFound,
    TResult? Function(_IncomeCategoryNotSelected value)? categoryNotSelected,
    TResult? Function(_IncomeServerError value)? serverError,
  }) {
    return categoryNotSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncomeUnexpected value)? unexpected,
    TResult Function(_IncomeNotFound value)? notFound,
    TResult Function(_IncomeCategoryNotSelected value)? categoryNotSelected,
    TResult Function(_IncomeServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (categoryNotSelected != null) {
      return categoryNotSelected(this);
    }
    return orElse();
  }
}

abstract class _IncomeCategoryNotSelected implements IncomeFailure {
  const factory _IncomeCategoryNotSelected() = _$IncomeCategoryNotSelectedImpl;
}

/// @nodoc
abstract class _$$IncomeServerErrorImplCopyWith<$Res> {
  factory _$$IncomeServerErrorImplCopyWith(_$IncomeServerErrorImpl value,
          $Res Function(_$IncomeServerErrorImpl) then) =
      __$$IncomeServerErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IncomeServerErrorImplCopyWithImpl<$Res>
    extends _$IncomeFailureCopyWithImpl<$Res, _$IncomeServerErrorImpl>
    implements _$$IncomeServerErrorImplCopyWith<$Res> {
  __$$IncomeServerErrorImplCopyWithImpl(_$IncomeServerErrorImpl _value,
      $Res Function(_$IncomeServerErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IncomeServerErrorImpl implements _IncomeServerError {
  const _$IncomeServerErrorImpl();

  @override
  String toString() {
    return 'IncomeFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IncomeServerErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() notFound,
    required TResult Function() categoryNotSelected,
    required TResult Function() serverError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? notFound,
    TResult? Function()? categoryNotSelected,
    TResult? Function()? serverError,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? notFound,
    TResult Function()? categoryNotSelected,
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
    required TResult Function(_IncomeCategoryNotSelected value)
        categoryNotSelected,
    required TResult Function(_IncomeServerError value) serverError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncomeUnexpected value)? unexpected,
    TResult? Function(_IncomeNotFound value)? notFound,
    TResult? Function(_IncomeCategoryNotSelected value)? categoryNotSelected,
    TResult? Function(_IncomeServerError value)? serverError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncomeUnexpected value)? unexpected,
    TResult Function(_IncomeNotFound value)? notFound,
    TResult Function(_IncomeCategoryNotSelected value)? categoryNotSelected,
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
  const factory _IncomeServerError() = _$IncomeServerErrorImpl;
}

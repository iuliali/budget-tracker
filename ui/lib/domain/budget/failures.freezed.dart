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
mixin _$BudgetFailures {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() alreadyExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? alreadyExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? alreadyExists,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_AlreadyExists value) alreadyExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_AlreadyExists value)? alreadyExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_AlreadyExists value)? alreadyExists,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BudgetFailuresCopyWith<$Res> {
  factory $BudgetFailuresCopyWith(
          BudgetFailures value, $Res Function(BudgetFailures) then) =
      _$BudgetFailuresCopyWithImpl<$Res, BudgetFailures>;
}

/// @nodoc
class _$BudgetFailuresCopyWithImpl<$Res, $Val extends BudgetFailures>
    implements $BudgetFailuresCopyWith<$Res> {
  _$BudgetFailuresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UnexpectedCopyWith<$Res> {
  factory _$$_UnexpectedCopyWith(
          _$_Unexpected value, $Res Function(_$_Unexpected) then) =
      __$$_UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnexpectedCopyWithImpl<$Res>
    extends _$BudgetFailuresCopyWithImpl<$Res, _$_Unexpected>
    implements _$$_UnexpectedCopyWith<$Res> {
  __$$_UnexpectedCopyWithImpl(
      _$_Unexpected _value, $Res Function(_$_Unexpected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Unexpected implements _Unexpected {
  const _$_Unexpected();

  @override
  String toString() {
    return 'BudgetFailures.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() alreadyExists,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? alreadyExists,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? alreadyExists,
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
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_AlreadyExists value) alreadyExists,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_AlreadyExists value)? alreadyExists,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_AlreadyExists value)? alreadyExists,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements BudgetFailures {
  const factory _Unexpected() = _$_Unexpected;
}

/// @nodoc
abstract class _$$_AlreadyExistsCopyWith<$Res> {
  factory _$$_AlreadyExistsCopyWith(
          _$_AlreadyExists value, $Res Function(_$_AlreadyExists) then) =
      __$$_AlreadyExistsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AlreadyExistsCopyWithImpl<$Res>
    extends _$BudgetFailuresCopyWithImpl<$Res, _$_AlreadyExists>
    implements _$$_AlreadyExistsCopyWith<$Res> {
  __$$_AlreadyExistsCopyWithImpl(
      _$_AlreadyExists _value, $Res Function(_$_AlreadyExists) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AlreadyExists implements _AlreadyExists {
  const _$_AlreadyExists();

  @override
  String toString() {
    return 'BudgetFailures.alreadyExists()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AlreadyExists);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() alreadyExists,
  }) {
    return alreadyExists();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? alreadyExists,
  }) {
    return alreadyExists?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? alreadyExists,
    required TResult orElse(),
  }) {
    if (alreadyExists != null) {
      return alreadyExists();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_AlreadyExists value) alreadyExists,
  }) {
    return alreadyExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_AlreadyExists value)? alreadyExists,
  }) {
    return alreadyExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_AlreadyExists value)? alreadyExists,
    required TResult orElse(),
  }) {
    if (alreadyExists != null) {
      return alreadyExists(this);
    }
    return orElse();
  }
}

abstract class _AlreadyExists implements BudgetFailures {
  const factory _AlreadyExists() = _$_AlreadyExists;
}

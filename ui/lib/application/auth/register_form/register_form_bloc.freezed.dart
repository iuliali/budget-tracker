// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String confirmPasswordStr) confirmPasswordChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String firstNameStr) firstNameChanged,
    required TResult Function(String lastNameStr) lastNameChanged,
    required TResult Function(String defaultCurrencyStr) defaultCurrencyChanged,
    required TResult Function() registerPressed,
    required TResult Function() registerAgain,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String usernameStr)? usernameChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String firstNameStr)? firstNameChanged,
    TResult? Function(String lastNameStr)? lastNameChanged,
    TResult? Function(String defaultCurrencyStr)? defaultCurrencyChanged,
    TResult? Function()? registerPressed,
    TResult? Function()? registerAgain,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String firstNameStr)? firstNameChanged,
    TResult Function(String lastNameStr)? lastNameChanged,
    TResult Function(String defaultCurrencyStr)? defaultCurrencyChanged,
    TResult Function()? registerPressed,
    TResult Function()? registerAgain,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(DefaultCurrencyChanged value)
        defaultCurrencyChanged,
    required TResult Function(RegisterPressed value) registerPressed,
    required TResult Function(RegisterAgain value) registerAgain,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(DefaultCurrencyChanged value)? defaultCurrencyChanged,
    TResult? Function(RegisterPressed value)? registerPressed,
    TResult? Function(RegisterAgain value)? registerAgain,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(DefaultCurrencyChanged value)? defaultCurrencyChanged,
    TResult Function(RegisterPressed value)? registerPressed,
    TResult Function(RegisterAgain value)? registerAgain,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterFormEventCopyWith<$Res> {
  factory $RegisterFormEventCopyWith(
          RegisterFormEvent value, $Res Function(RegisterFormEvent) then) =
      _$RegisterFormEventCopyWithImpl<$Res, RegisterFormEvent>;
}

/// @nodoc
class _$RegisterFormEventCopyWithImpl<$Res, $Val extends RegisterFormEvent>
    implements $RegisterFormEventCopyWith<$Res> {
  _$RegisterFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UsernameChangedImplCopyWith<$Res> {
  factory _$$UsernameChangedImplCopyWith(_$UsernameChangedImpl value,
          $Res Function(_$UsernameChangedImpl) then) =
      __$$UsernameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String usernameStr});
}

/// @nodoc
class __$$UsernameChangedImplCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res, _$UsernameChangedImpl>
    implements _$$UsernameChangedImplCopyWith<$Res> {
  __$$UsernameChangedImplCopyWithImpl(
      _$UsernameChangedImpl _value, $Res Function(_$UsernameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usernameStr = null,
  }) {
    return _then(_$UsernameChangedImpl(
      null == usernameStr
          ? _value.usernameStr
          : usernameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UsernameChangedImpl implements UsernameChanged {
  const _$UsernameChangedImpl(this.usernameStr);

  @override
  final String usernameStr;

  @override
  String toString() {
    return 'RegisterFormEvent.usernameChanged(usernameStr: $usernameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsernameChangedImpl &&
            (identical(other.usernameStr, usernameStr) ||
                other.usernameStr == usernameStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, usernameStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsernameChangedImplCopyWith<_$UsernameChangedImpl> get copyWith =>
      __$$UsernameChangedImplCopyWithImpl<_$UsernameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String confirmPasswordStr) confirmPasswordChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String firstNameStr) firstNameChanged,
    required TResult Function(String lastNameStr) lastNameChanged,
    required TResult Function(String defaultCurrencyStr) defaultCurrencyChanged,
    required TResult Function() registerPressed,
    required TResult Function() registerAgain,
  }) {
    return usernameChanged(usernameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String usernameStr)? usernameChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String firstNameStr)? firstNameChanged,
    TResult? Function(String lastNameStr)? lastNameChanged,
    TResult? Function(String defaultCurrencyStr)? defaultCurrencyChanged,
    TResult? Function()? registerPressed,
    TResult? Function()? registerAgain,
  }) {
    return usernameChanged?.call(usernameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String firstNameStr)? firstNameChanged,
    TResult Function(String lastNameStr)? lastNameChanged,
    TResult Function(String defaultCurrencyStr)? defaultCurrencyChanged,
    TResult Function()? registerPressed,
    TResult Function()? registerAgain,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(usernameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(DefaultCurrencyChanged value)
        defaultCurrencyChanged,
    required TResult Function(RegisterPressed value) registerPressed,
    required TResult Function(RegisterAgain value) registerAgain,
  }) {
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(DefaultCurrencyChanged value)? defaultCurrencyChanged,
    TResult? Function(RegisterPressed value)? registerPressed,
    TResult? Function(RegisterAgain value)? registerAgain,
  }) {
    return usernameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(DefaultCurrencyChanged value)? defaultCurrencyChanged,
    TResult Function(RegisterPressed value)? registerPressed,
    TResult Function(RegisterAgain value)? registerAgain,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class UsernameChanged implements RegisterFormEvent {
  const factory UsernameChanged(final String usernameStr) =
      _$UsernameChangedImpl;

  String get usernameStr;
  @JsonKey(ignore: true)
  _$$UsernameChangedImplCopyWith<_$UsernameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedImplCopyWith<$Res> {
  factory _$$PasswordChangedImplCopyWith(_$PasswordChangedImpl value,
          $Res Function(_$PasswordChangedImpl) then) =
      __$$PasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String passwordStr});
}

/// @nodoc
class __$$PasswordChangedImplCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res, _$PasswordChangedImpl>
    implements _$$PasswordChangedImplCopyWith<$Res> {
  __$$PasswordChangedImplCopyWithImpl(
      _$PasswordChangedImpl _value, $Res Function(_$PasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordStr = null,
  }) {
    return _then(_$PasswordChangedImpl(
      null == passwordStr
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChangedImpl implements PasswordChanged {
  const _$PasswordChangedImpl(this.passwordStr);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'RegisterFormEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedImpl &&
            (identical(other.passwordStr, passwordStr) ||
                other.passwordStr == passwordStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passwordStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      __$$PasswordChangedImplCopyWithImpl<_$PasswordChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String confirmPasswordStr) confirmPasswordChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String firstNameStr) firstNameChanged,
    required TResult Function(String lastNameStr) lastNameChanged,
    required TResult Function(String defaultCurrencyStr) defaultCurrencyChanged,
    required TResult Function() registerPressed,
    required TResult Function() registerAgain,
  }) {
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String usernameStr)? usernameChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String firstNameStr)? firstNameChanged,
    TResult? Function(String lastNameStr)? lastNameChanged,
    TResult? Function(String defaultCurrencyStr)? defaultCurrencyChanged,
    TResult? Function()? registerPressed,
    TResult? Function()? registerAgain,
  }) {
    return passwordChanged?.call(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String firstNameStr)? firstNameChanged,
    TResult Function(String lastNameStr)? lastNameChanged,
    TResult Function(String defaultCurrencyStr)? defaultCurrencyChanged,
    TResult Function()? registerPressed,
    TResult Function()? registerAgain,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(DefaultCurrencyChanged value)
        defaultCurrencyChanged,
    required TResult Function(RegisterPressed value) registerPressed,
    required TResult Function(RegisterAgain value) registerAgain,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(DefaultCurrencyChanged value)? defaultCurrencyChanged,
    TResult? Function(RegisterPressed value)? registerPressed,
    TResult? Function(RegisterAgain value)? registerAgain,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(DefaultCurrencyChanged value)? defaultCurrencyChanged,
    TResult Function(RegisterPressed value)? registerPressed,
    TResult Function(RegisterAgain value)? registerAgain,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements RegisterFormEvent {
  const factory PasswordChanged(final String passwordStr) =
      _$PasswordChangedImpl;

  String get passwordStr;
  @JsonKey(ignore: true)
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmPasswordChangedImplCopyWith<$Res> {
  factory _$$ConfirmPasswordChangedImplCopyWith(
          _$ConfirmPasswordChangedImpl value,
          $Res Function(_$ConfirmPasswordChangedImpl) then) =
      __$$ConfirmPasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String confirmPasswordStr});
}

/// @nodoc
class __$$ConfirmPasswordChangedImplCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res, _$ConfirmPasswordChangedImpl>
    implements _$$ConfirmPasswordChangedImplCopyWith<$Res> {
  __$$ConfirmPasswordChangedImplCopyWithImpl(
      _$ConfirmPasswordChangedImpl _value,
      $Res Function(_$ConfirmPasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmPasswordStr = null,
  }) {
    return _then(_$ConfirmPasswordChangedImpl(
      null == confirmPasswordStr
          ? _value.confirmPasswordStr
          : confirmPasswordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmPasswordChangedImpl implements ConfirmPasswordChanged {
  const _$ConfirmPasswordChangedImpl(this.confirmPasswordStr);

  @override
  final String confirmPasswordStr;

  @override
  String toString() {
    return 'RegisterFormEvent.confirmPasswordChanged(confirmPasswordStr: $confirmPasswordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmPasswordChangedImpl &&
            (identical(other.confirmPasswordStr, confirmPasswordStr) ||
                other.confirmPasswordStr == confirmPasswordStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmPasswordStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmPasswordChangedImplCopyWith<_$ConfirmPasswordChangedImpl>
      get copyWith => __$$ConfirmPasswordChangedImplCopyWithImpl<
          _$ConfirmPasswordChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String confirmPasswordStr) confirmPasswordChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String firstNameStr) firstNameChanged,
    required TResult Function(String lastNameStr) lastNameChanged,
    required TResult Function(String defaultCurrencyStr) defaultCurrencyChanged,
    required TResult Function() registerPressed,
    required TResult Function() registerAgain,
  }) {
    return confirmPasswordChanged(confirmPasswordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String usernameStr)? usernameChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String firstNameStr)? firstNameChanged,
    TResult? Function(String lastNameStr)? lastNameChanged,
    TResult? Function(String defaultCurrencyStr)? defaultCurrencyChanged,
    TResult? Function()? registerPressed,
    TResult? Function()? registerAgain,
  }) {
    return confirmPasswordChanged?.call(confirmPasswordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String firstNameStr)? firstNameChanged,
    TResult Function(String lastNameStr)? lastNameChanged,
    TResult Function(String defaultCurrencyStr)? defaultCurrencyChanged,
    TResult Function()? registerPressed,
    TResult Function()? registerAgain,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(confirmPasswordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(DefaultCurrencyChanged value)
        defaultCurrencyChanged,
    required TResult Function(RegisterPressed value) registerPressed,
    required TResult Function(RegisterAgain value) registerAgain,
  }) {
    return confirmPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(DefaultCurrencyChanged value)? defaultCurrencyChanged,
    TResult? Function(RegisterPressed value)? registerPressed,
    TResult? Function(RegisterAgain value)? registerAgain,
  }) {
    return confirmPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(DefaultCurrencyChanged value)? defaultCurrencyChanged,
    TResult Function(RegisterPressed value)? registerPressed,
    TResult Function(RegisterAgain value)? registerAgain,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class ConfirmPasswordChanged implements RegisterFormEvent {
  const factory ConfirmPasswordChanged(final String confirmPasswordStr) =
      _$ConfirmPasswordChangedImpl;

  String get confirmPasswordStr;
  @JsonKey(ignore: true)
  _$$ConfirmPasswordChangedImplCopyWith<_$ConfirmPasswordChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailChangedImplCopyWith<$Res> {
  factory _$$EmailChangedImplCopyWith(
          _$EmailChangedImpl value, $Res Function(_$EmailChangedImpl) then) =
      __$$EmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String emailStr});
}

/// @nodoc
class __$$EmailChangedImplCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res, _$EmailChangedImpl>
    implements _$$EmailChangedImplCopyWith<$Res> {
  __$$EmailChangedImplCopyWithImpl(
      _$EmailChangedImpl _value, $Res Function(_$EmailChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailStr = null,
  }) {
    return _then(_$EmailChangedImpl(
      null == emailStr
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChangedImpl implements EmailChanged {
  const _$EmailChangedImpl(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'RegisterFormEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChangedImpl &&
            (identical(other.emailStr, emailStr) ||
                other.emailStr == emailStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      __$$EmailChangedImplCopyWithImpl<_$EmailChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String confirmPasswordStr) confirmPasswordChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String firstNameStr) firstNameChanged,
    required TResult Function(String lastNameStr) lastNameChanged,
    required TResult Function(String defaultCurrencyStr) defaultCurrencyChanged,
    required TResult Function() registerPressed,
    required TResult Function() registerAgain,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String usernameStr)? usernameChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String firstNameStr)? firstNameChanged,
    TResult? Function(String lastNameStr)? lastNameChanged,
    TResult? Function(String defaultCurrencyStr)? defaultCurrencyChanged,
    TResult? Function()? registerPressed,
    TResult? Function()? registerAgain,
  }) {
    return emailChanged?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String firstNameStr)? firstNameChanged,
    TResult Function(String lastNameStr)? lastNameChanged,
    TResult Function(String defaultCurrencyStr)? defaultCurrencyChanged,
    TResult Function()? registerPressed,
    TResult Function()? registerAgain,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(DefaultCurrencyChanged value)
        defaultCurrencyChanged,
    required TResult Function(RegisterPressed value) registerPressed,
    required TResult Function(RegisterAgain value) registerAgain,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(DefaultCurrencyChanged value)? defaultCurrencyChanged,
    TResult? Function(RegisterPressed value)? registerPressed,
    TResult? Function(RegisterAgain value)? registerAgain,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(DefaultCurrencyChanged value)? defaultCurrencyChanged,
    TResult Function(RegisterPressed value)? registerPressed,
    TResult Function(RegisterAgain value)? registerAgain,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements RegisterFormEvent {
  const factory EmailChanged(final String emailStr) = _$EmailChangedImpl;

  String get emailStr;
  @JsonKey(ignore: true)
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FirstNameChangedImplCopyWith<$Res> {
  factory _$$FirstNameChangedImplCopyWith(_$FirstNameChangedImpl value,
          $Res Function(_$FirstNameChangedImpl) then) =
      __$$FirstNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String firstNameStr});
}

/// @nodoc
class __$$FirstNameChangedImplCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res, _$FirstNameChangedImpl>
    implements _$$FirstNameChangedImplCopyWith<$Res> {
  __$$FirstNameChangedImplCopyWithImpl(_$FirstNameChangedImpl _value,
      $Res Function(_$FirstNameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstNameStr = null,
  }) {
    return _then(_$FirstNameChangedImpl(
      null == firstNameStr
          ? _value.firstNameStr
          : firstNameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FirstNameChangedImpl implements FirstNameChanged {
  const _$FirstNameChangedImpl(this.firstNameStr);

  @override
  final String firstNameStr;

  @override
  String toString() {
    return 'RegisterFormEvent.firstNameChanged(firstNameStr: $firstNameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirstNameChangedImpl &&
            (identical(other.firstNameStr, firstNameStr) ||
                other.firstNameStr == firstNameStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstNameStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirstNameChangedImplCopyWith<_$FirstNameChangedImpl> get copyWith =>
      __$$FirstNameChangedImplCopyWithImpl<_$FirstNameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String confirmPasswordStr) confirmPasswordChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String firstNameStr) firstNameChanged,
    required TResult Function(String lastNameStr) lastNameChanged,
    required TResult Function(String defaultCurrencyStr) defaultCurrencyChanged,
    required TResult Function() registerPressed,
    required TResult Function() registerAgain,
  }) {
    return firstNameChanged(firstNameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String usernameStr)? usernameChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String firstNameStr)? firstNameChanged,
    TResult? Function(String lastNameStr)? lastNameChanged,
    TResult? Function(String defaultCurrencyStr)? defaultCurrencyChanged,
    TResult? Function()? registerPressed,
    TResult? Function()? registerAgain,
  }) {
    return firstNameChanged?.call(firstNameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String firstNameStr)? firstNameChanged,
    TResult Function(String lastNameStr)? lastNameChanged,
    TResult Function(String defaultCurrencyStr)? defaultCurrencyChanged,
    TResult Function()? registerPressed,
    TResult Function()? registerAgain,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(firstNameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(DefaultCurrencyChanged value)
        defaultCurrencyChanged,
    required TResult Function(RegisterPressed value) registerPressed,
    required TResult Function(RegisterAgain value) registerAgain,
  }) {
    return firstNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(DefaultCurrencyChanged value)? defaultCurrencyChanged,
    TResult? Function(RegisterPressed value)? registerPressed,
    TResult? Function(RegisterAgain value)? registerAgain,
  }) {
    return firstNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(DefaultCurrencyChanged value)? defaultCurrencyChanged,
    TResult Function(RegisterPressed value)? registerPressed,
    TResult Function(RegisterAgain value)? registerAgain,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(this);
    }
    return orElse();
  }
}

abstract class FirstNameChanged implements RegisterFormEvent {
  const factory FirstNameChanged(final String firstNameStr) =
      _$FirstNameChangedImpl;

  String get firstNameStr;
  @JsonKey(ignore: true)
  _$$FirstNameChangedImplCopyWith<_$FirstNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LastNameChangedImplCopyWith<$Res> {
  factory _$$LastNameChangedImplCopyWith(_$LastNameChangedImpl value,
          $Res Function(_$LastNameChangedImpl) then) =
      __$$LastNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String lastNameStr});
}

/// @nodoc
class __$$LastNameChangedImplCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res, _$LastNameChangedImpl>
    implements _$$LastNameChangedImplCopyWith<$Res> {
  __$$LastNameChangedImplCopyWithImpl(
      _$LastNameChangedImpl _value, $Res Function(_$LastNameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastNameStr = null,
  }) {
    return _then(_$LastNameChangedImpl(
      null == lastNameStr
          ? _value.lastNameStr
          : lastNameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LastNameChangedImpl implements LastNameChanged {
  const _$LastNameChangedImpl(this.lastNameStr);

  @override
  final String lastNameStr;

  @override
  String toString() {
    return 'RegisterFormEvent.lastNameChanged(lastNameStr: $lastNameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastNameChangedImpl &&
            (identical(other.lastNameStr, lastNameStr) ||
                other.lastNameStr == lastNameStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastNameStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LastNameChangedImplCopyWith<_$LastNameChangedImpl> get copyWith =>
      __$$LastNameChangedImplCopyWithImpl<_$LastNameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String confirmPasswordStr) confirmPasswordChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String firstNameStr) firstNameChanged,
    required TResult Function(String lastNameStr) lastNameChanged,
    required TResult Function(String defaultCurrencyStr) defaultCurrencyChanged,
    required TResult Function() registerPressed,
    required TResult Function() registerAgain,
  }) {
    return lastNameChanged(lastNameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String usernameStr)? usernameChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String firstNameStr)? firstNameChanged,
    TResult? Function(String lastNameStr)? lastNameChanged,
    TResult? Function(String defaultCurrencyStr)? defaultCurrencyChanged,
    TResult? Function()? registerPressed,
    TResult? Function()? registerAgain,
  }) {
    return lastNameChanged?.call(lastNameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String firstNameStr)? firstNameChanged,
    TResult Function(String lastNameStr)? lastNameChanged,
    TResult Function(String defaultCurrencyStr)? defaultCurrencyChanged,
    TResult Function()? registerPressed,
    TResult Function()? registerAgain,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(lastNameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(DefaultCurrencyChanged value)
        defaultCurrencyChanged,
    required TResult Function(RegisterPressed value) registerPressed,
    required TResult Function(RegisterAgain value) registerAgain,
  }) {
    return lastNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(DefaultCurrencyChanged value)? defaultCurrencyChanged,
    TResult? Function(RegisterPressed value)? registerPressed,
    TResult? Function(RegisterAgain value)? registerAgain,
  }) {
    return lastNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(DefaultCurrencyChanged value)? defaultCurrencyChanged,
    TResult Function(RegisterPressed value)? registerPressed,
    TResult Function(RegisterAgain value)? registerAgain,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(this);
    }
    return orElse();
  }
}

abstract class LastNameChanged implements RegisterFormEvent {
  const factory LastNameChanged(final String lastNameStr) =
      _$LastNameChangedImpl;

  String get lastNameStr;
  @JsonKey(ignore: true)
  _$$LastNameChangedImplCopyWith<_$LastNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DefaultCurrencyChangedImplCopyWith<$Res> {
  factory _$$DefaultCurrencyChangedImplCopyWith(
          _$DefaultCurrencyChangedImpl value,
          $Res Function(_$DefaultCurrencyChangedImpl) then) =
      __$$DefaultCurrencyChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String defaultCurrencyStr});
}

/// @nodoc
class __$$DefaultCurrencyChangedImplCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res, _$DefaultCurrencyChangedImpl>
    implements _$$DefaultCurrencyChangedImplCopyWith<$Res> {
  __$$DefaultCurrencyChangedImplCopyWithImpl(
      _$DefaultCurrencyChangedImpl _value,
      $Res Function(_$DefaultCurrencyChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultCurrencyStr = null,
  }) {
    return _then(_$DefaultCurrencyChangedImpl(
      null == defaultCurrencyStr
          ? _value.defaultCurrencyStr
          : defaultCurrencyStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DefaultCurrencyChangedImpl implements DefaultCurrencyChanged {
  const _$DefaultCurrencyChangedImpl(this.defaultCurrencyStr);

  @override
  final String defaultCurrencyStr;

  @override
  String toString() {
    return 'RegisterFormEvent.defaultCurrencyChanged(defaultCurrencyStr: $defaultCurrencyStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultCurrencyChangedImpl &&
            (identical(other.defaultCurrencyStr, defaultCurrencyStr) ||
                other.defaultCurrencyStr == defaultCurrencyStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, defaultCurrencyStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DefaultCurrencyChangedImplCopyWith<_$DefaultCurrencyChangedImpl>
      get copyWith => __$$DefaultCurrencyChangedImplCopyWithImpl<
          _$DefaultCurrencyChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String confirmPasswordStr) confirmPasswordChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String firstNameStr) firstNameChanged,
    required TResult Function(String lastNameStr) lastNameChanged,
    required TResult Function(String defaultCurrencyStr) defaultCurrencyChanged,
    required TResult Function() registerPressed,
    required TResult Function() registerAgain,
  }) {
    return defaultCurrencyChanged(defaultCurrencyStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String usernameStr)? usernameChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String firstNameStr)? firstNameChanged,
    TResult? Function(String lastNameStr)? lastNameChanged,
    TResult? Function(String defaultCurrencyStr)? defaultCurrencyChanged,
    TResult? Function()? registerPressed,
    TResult? Function()? registerAgain,
  }) {
    return defaultCurrencyChanged?.call(defaultCurrencyStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String firstNameStr)? firstNameChanged,
    TResult Function(String lastNameStr)? lastNameChanged,
    TResult Function(String defaultCurrencyStr)? defaultCurrencyChanged,
    TResult Function()? registerPressed,
    TResult Function()? registerAgain,
    required TResult orElse(),
  }) {
    if (defaultCurrencyChanged != null) {
      return defaultCurrencyChanged(defaultCurrencyStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(DefaultCurrencyChanged value)
        defaultCurrencyChanged,
    required TResult Function(RegisterPressed value) registerPressed,
    required TResult Function(RegisterAgain value) registerAgain,
  }) {
    return defaultCurrencyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(DefaultCurrencyChanged value)? defaultCurrencyChanged,
    TResult? Function(RegisterPressed value)? registerPressed,
    TResult? Function(RegisterAgain value)? registerAgain,
  }) {
    return defaultCurrencyChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(DefaultCurrencyChanged value)? defaultCurrencyChanged,
    TResult Function(RegisterPressed value)? registerPressed,
    TResult Function(RegisterAgain value)? registerAgain,
    required TResult orElse(),
  }) {
    if (defaultCurrencyChanged != null) {
      return defaultCurrencyChanged(this);
    }
    return orElse();
  }
}

abstract class DefaultCurrencyChanged implements RegisterFormEvent {
  const factory DefaultCurrencyChanged(final String defaultCurrencyStr) =
      _$DefaultCurrencyChangedImpl;

  String get defaultCurrencyStr;
  @JsonKey(ignore: true)
  _$$DefaultCurrencyChangedImplCopyWith<_$DefaultCurrencyChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterPressedImplCopyWith<$Res> {
  factory _$$RegisterPressedImplCopyWith(_$RegisterPressedImpl value,
          $Res Function(_$RegisterPressedImpl) then) =
      __$$RegisterPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterPressedImplCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res, _$RegisterPressedImpl>
    implements _$$RegisterPressedImplCopyWith<$Res> {
  __$$RegisterPressedImplCopyWithImpl(
      _$RegisterPressedImpl _value, $Res Function(_$RegisterPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterPressedImpl implements RegisterPressed {
  const _$RegisterPressedImpl();

  @override
  String toString() {
    return 'RegisterFormEvent.registerPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String confirmPasswordStr) confirmPasswordChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String firstNameStr) firstNameChanged,
    required TResult Function(String lastNameStr) lastNameChanged,
    required TResult Function(String defaultCurrencyStr) defaultCurrencyChanged,
    required TResult Function() registerPressed,
    required TResult Function() registerAgain,
  }) {
    return registerPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String usernameStr)? usernameChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String firstNameStr)? firstNameChanged,
    TResult? Function(String lastNameStr)? lastNameChanged,
    TResult? Function(String defaultCurrencyStr)? defaultCurrencyChanged,
    TResult? Function()? registerPressed,
    TResult? Function()? registerAgain,
  }) {
    return registerPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String firstNameStr)? firstNameChanged,
    TResult Function(String lastNameStr)? lastNameChanged,
    TResult Function(String defaultCurrencyStr)? defaultCurrencyChanged,
    TResult Function()? registerPressed,
    TResult Function()? registerAgain,
    required TResult orElse(),
  }) {
    if (registerPressed != null) {
      return registerPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(DefaultCurrencyChanged value)
        defaultCurrencyChanged,
    required TResult Function(RegisterPressed value) registerPressed,
    required TResult Function(RegisterAgain value) registerAgain,
  }) {
    return registerPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(DefaultCurrencyChanged value)? defaultCurrencyChanged,
    TResult? Function(RegisterPressed value)? registerPressed,
    TResult? Function(RegisterAgain value)? registerAgain,
  }) {
    return registerPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(DefaultCurrencyChanged value)? defaultCurrencyChanged,
    TResult Function(RegisterPressed value)? registerPressed,
    TResult Function(RegisterAgain value)? registerAgain,
    required TResult orElse(),
  }) {
    if (registerPressed != null) {
      return registerPressed(this);
    }
    return orElse();
  }
}

abstract class RegisterPressed implements RegisterFormEvent {
  const factory RegisterPressed() = _$RegisterPressedImpl;
}

/// @nodoc
abstract class _$$RegisterAgainImplCopyWith<$Res> {
  factory _$$RegisterAgainImplCopyWith(
          _$RegisterAgainImpl value, $Res Function(_$RegisterAgainImpl) then) =
      __$$RegisterAgainImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterAgainImplCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res, _$RegisterAgainImpl>
    implements _$$RegisterAgainImplCopyWith<$Res> {
  __$$RegisterAgainImplCopyWithImpl(
      _$RegisterAgainImpl _value, $Res Function(_$RegisterAgainImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterAgainImpl implements RegisterAgain {
  const _$RegisterAgainImpl();

  @override
  String toString() {
    return 'RegisterFormEvent.registerAgain()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterAgainImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String confirmPasswordStr) confirmPasswordChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String firstNameStr) firstNameChanged,
    required TResult Function(String lastNameStr) lastNameChanged,
    required TResult Function(String defaultCurrencyStr) defaultCurrencyChanged,
    required TResult Function() registerPressed,
    required TResult Function() registerAgain,
  }) {
    return registerAgain();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String usernameStr)? usernameChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String firstNameStr)? firstNameChanged,
    TResult? Function(String lastNameStr)? lastNameChanged,
    TResult? Function(String defaultCurrencyStr)? defaultCurrencyChanged,
    TResult? Function()? registerPressed,
    TResult? Function()? registerAgain,
  }) {
    return registerAgain?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String firstNameStr)? firstNameChanged,
    TResult Function(String lastNameStr)? lastNameChanged,
    TResult Function(String defaultCurrencyStr)? defaultCurrencyChanged,
    TResult Function()? registerPressed,
    TResult Function()? registerAgain,
    required TResult orElse(),
  }) {
    if (registerAgain != null) {
      return registerAgain();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(DefaultCurrencyChanged value)
        defaultCurrencyChanged,
    required TResult Function(RegisterPressed value) registerPressed,
    required TResult Function(RegisterAgain value) registerAgain,
  }) {
    return registerAgain(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(DefaultCurrencyChanged value)? defaultCurrencyChanged,
    TResult? Function(RegisterPressed value)? registerPressed,
    TResult? Function(RegisterAgain value)? registerAgain,
  }) {
    return registerAgain?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(DefaultCurrencyChanged value)? defaultCurrencyChanged,
    TResult Function(RegisterPressed value)? registerPressed,
    TResult Function(RegisterAgain value)? registerAgain,
    required TResult orElse(),
  }) {
    if (registerAgain != null) {
      return registerAgain(this);
    }
    return orElse();
  }
}

abstract class RegisterAgain implements RegisterFormEvent {
  const factory RegisterAgain() = _$RegisterAgainImpl;
}

/// @nodoc
mixin _$RegisterFormState {
  Username get username => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  Password get confirmPassword => throw _privateConstructorUsedError;
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  FirstName get firstName => throw _privateConstructorUsedError;
  LastName get lastName => throw _privateConstructorUsedError;
  UserDefaultCurrency get defaultCurrency => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterFormStateCopyWith<RegisterFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterFormStateCopyWith<$Res> {
  factory $RegisterFormStateCopyWith(
          RegisterFormState value, $Res Function(RegisterFormState) then) =
      _$RegisterFormStateCopyWithImpl<$Res, RegisterFormState>;
  @useResult
  $Res call(
      {Username username,
      Password password,
      Password confirmPassword,
      EmailAddress emailAddress,
      FirstName firstName,
      LastName lastName,
      UserDefaultCurrency defaultCurrency,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$RegisterFormStateCopyWithImpl<$Res, $Val extends RegisterFormState>
    implements $RegisterFormStateCopyWith<$Res> {
  _$RegisterFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? emailAddress = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? defaultCurrency = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as FirstName,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as LastName,
      defaultCurrency: null == defaultCurrency
          ? _value.defaultCurrency
          : defaultCurrency // ignore: cast_nullable_to_non_nullable
              as UserDefaultCurrency,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterFormStateImplCopyWith<$Res>
    implements $RegisterFormStateCopyWith<$Res> {
  factory _$$RegisterFormStateImplCopyWith(_$RegisterFormStateImpl value,
          $Res Function(_$RegisterFormStateImpl) then) =
      __$$RegisterFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Username username,
      Password password,
      Password confirmPassword,
      EmailAddress emailAddress,
      FirstName firstName,
      LastName lastName,
      UserDefaultCurrency defaultCurrency,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$RegisterFormStateImplCopyWithImpl<$Res>
    extends _$RegisterFormStateCopyWithImpl<$Res, _$RegisterFormStateImpl>
    implements _$$RegisterFormStateImplCopyWith<$Res> {
  __$$RegisterFormStateImplCopyWithImpl(_$RegisterFormStateImpl _value,
      $Res Function(_$RegisterFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? emailAddress = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? defaultCurrency = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$RegisterFormStateImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as FirstName,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as LastName,
      defaultCurrency: null == defaultCurrency
          ? _value.defaultCurrency
          : defaultCurrency // ignore: cast_nullable_to_non_nullable
              as UserDefaultCurrency,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$RegisterFormStateImpl implements _RegisterFormState {
  const _$RegisterFormStateImpl(
      {required this.username,
      required this.password,
      required this.confirmPassword,
      required this.emailAddress,
      required this.firstName,
      required this.lastName,
      required this.defaultCurrency,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption});

  @override
  final Username username;
  @override
  final Password password;
  @override
  final Password confirmPassword;
  @override
  final EmailAddress emailAddress;
  @override
  final FirstName firstName;
  @override
  final LastName lastName;
  @override
  final UserDefaultCurrency defaultCurrency;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'RegisterFormState(username: $username, password: $password, confirmPassword: $confirmPassword, emailAddress: $emailAddress, firstName: $firstName, lastName: $lastName, defaultCurrency: $defaultCurrency, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterFormStateImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.defaultCurrency, defaultCurrency) ||
                other.defaultCurrency == defaultCurrency) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      username,
      password,
      confirmPassword,
      emailAddress,
      firstName,
      lastName,
      defaultCurrency,
      showErrorMessages,
      isSubmitting,
      authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterFormStateImplCopyWith<_$RegisterFormStateImpl> get copyWith =>
      __$$RegisterFormStateImplCopyWithImpl<_$RegisterFormStateImpl>(
          this, _$identity);
}

abstract class _RegisterFormState implements RegisterFormState {
  const factory _RegisterFormState(
      {required final Username username,
      required final Password password,
      required final Password confirmPassword,
      required final EmailAddress emailAddress,
      required final FirstName firstName,
      required final LastName lastName,
      required final UserDefaultCurrency defaultCurrency,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$RegisterFormStateImpl;

  @override
  Username get username;
  @override
  Password get password;
  @override
  Password get confirmPassword;
  @override
  EmailAddress get emailAddress;
  @override
  FirstName get firstName;
  @override
  LastName get lastName;
  @override
  UserDefaultCurrency get defaultCurrency;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$RegisterFormStateImplCopyWith<_$RegisterFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

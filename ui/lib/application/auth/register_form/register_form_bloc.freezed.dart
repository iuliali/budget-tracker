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
abstract class _$$UsernameChangedCopyWith<$Res> {
  factory _$$UsernameChangedCopyWith(
          _$UsernameChanged value, $Res Function(_$UsernameChanged) then) =
      __$$UsernameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String usernameStr});
}

/// @nodoc
class __$$UsernameChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res, _$UsernameChanged>
    implements _$$UsernameChangedCopyWith<$Res> {
  __$$UsernameChangedCopyWithImpl(
      _$UsernameChanged _value, $Res Function(_$UsernameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usernameStr = null,
  }) {
    return _then(_$UsernameChanged(
      null == usernameStr
          ? _value.usernameStr
          : usernameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UsernameChanged implements UsernameChanged {
  const _$UsernameChanged(this.usernameStr);

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
            other is _$UsernameChanged &&
            (identical(other.usernameStr, usernameStr) ||
                other.usernameStr == usernameStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, usernameStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsernameChangedCopyWith<_$UsernameChanged> get copyWith =>
      __$$UsernameChangedCopyWithImpl<_$UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String confirmPasswordStr) confirmPasswordChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String firstNameStr) firstNameChanged,
    required TResult Function(String lastNameStr) lastNameChanged,
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
  const factory UsernameChanged(final String usernameStr) = _$UsernameChanged;

  String get usernameStr;
  @JsonKey(ignore: true)
  _$$UsernameChangedCopyWith<_$UsernameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedCopyWith<$Res> {
  factory _$$PasswordChangedCopyWith(
          _$PasswordChanged value, $Res Function(_$PasswordChanged) then) =
      __$$PasswordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String passwordStr});
}

/// @nodoc
class __$$PasswordChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res, _$PasswordChanged>
    implements _$$PasswordChangedCopyWith<$Res> {
  __$$PasswordChangedCopyWithImpl(
      _$PasswordChanged _value, $Res Function(_$PasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordStr = null,
  }) {
    return _then(_$PasswordChanged(
      null == passwordStr
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.passwordStr);

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
            other is _$PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                other.passwordStr == passwordStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passwordStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      __$$PasswordChangedCopyWithImpl<_$PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String confirmPasswordStr) confirmPasswordChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String firstNameStr) firstNameChanged,
    required TResult Function(String lastNameStr) lastNameChanged,
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
  const factory PasswordChanged(final String passwordStr) = _$PasswordChanged;

  String get passwordStr;
  @JsonKey(ignore: true)
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmPasswordChangedCopyWith<$Res> {
  factory _$$ConfirmPasswordChangedCopyWith(_$ConfirmPasswordChanged value,
          $Res Function(_$ConfirmPasswordChanged) then) =
      __$$ConfirmPasswordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String confirmPasswordStr});
}

/// @nodoc
class __$$ConfirmPasswordChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res, _$ConfirmPasswordChanged>
    implements _$$ConfirmPasswordChangedCopyWith<$Res> {
  __$$ConfirmPasswordChangedCopyWithImpl(_$ConfirmPasswordChanged _value,
      $Res Function(_$ConfirmPasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmPasswordStr = null,
  }) {
    return _then(_$ConfirmPasswordChanged(
      null == confirmPasswordStr
          ? _value.confirmPasswordStr
          : confirmPasswordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmPasswordChanged implements ConfirmPasswordChanged {
  const _$ConfirmPasswordChanged(this.confirmPasswordStr);

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
            other is _$ConfirmPasswordChanged &&
            (identical(other.confirmPasswordStr, confirmPasswordStr) ||
                other.confirmPasswordStr == confirmPasswordStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmPasswordStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmPasswordChangedCopyWith<_$ConfirmPasswordChanged> get copyWith =>
      __$$ConfirmPasswordChangedCopyWithImpl<_$ConfirmPasswordChanged>(
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
      _$ConfirmPasswordChanged;

  String get confirmPasswordStr;
  @JsonKey(ignore: true)
  _$$ConfirmPasswordChangedCopyWith<_$ConfirmPasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailChangedCopyWith<$Res> {
  factory _$$EmailChangedCopyWith(
          _$EmailChanged value, $Res Function(_$EmailChanged) then) =
      __$$EmailChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String emailStr});
}

/// @nodoc
class __$$EmailChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res, _$EmailChanged>
    implements _$$EmailChangedCopyWith<$Res> {
  __$$EmailChangedCopyWithImpl(
      _$EmailChanged _value, $Res Function(_$EmailChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailStr = null,
  }) {
    return _then(_$EmailChanged(
      null == emailStr
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailStr);

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
            other is _$EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                other.emailStr == emailStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      __$$EmailChangedCopyWithImpl<_$EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String confirmPasswordStr) confirmPasswordChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String firstNameStr) firstNameChanged,
    required TResult Function(String lastNameStr) lastNameChanged,
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
  const factory EmailChanged(final String emailStr) = _$EmailChanged;

  String get emailStr;
  @JsonKey(ignore: true)
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FirstNameChangedCopyWith<$Res> {
  factory _$$FirstNameChangedCopyWith(
          _$FirstNameChanged value, $Res Function(_$FirstNameChanged) then) =
      __$$FirstNameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String firstNameStr});
}

/// @nodoc
class __$$FirstNameChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res, _$FirstNameChanged>
    implements _$$FirstNameChangedCopyWith<$Res> {
  __$$FirstNameChangedCopyWithImpl(
      _$FirstNameChanged _value, $Res Function(_$FirstNameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstNameStr = null,
  }) {
    return _then(_$FirstNameChanged(
      null == firstNameStr
          ? _value.firstNameStr
          : firstNameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FirstNameChanged implements FirstNameChanged {
  const _$FirstNameChanged(this.firstNameStr);

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
            other is _$FirstNameChanged &&
            (identical(other.firstNameStr, firstNameStr) ||
                other.firstNameStr == firstNameStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstNameStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirstNameChangedCopyWith<_$FirstNameChanged> get copyWith =>
      __$$FirstNameChangedCopyWithImpl<_$FirstNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String confirmPasswordStr) confirmPasswordChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String firstNameStr) firstNameChanged,
    required TResult Function(String lastNameStr) lastNameChanged,
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
      _$FirstNameChanged;

  String get firstNameStr;
  @JsonKey(ignore: true)
  _$$FirstNameChangedCopyWith<_$FirstNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LastNameChangedCopyWith<$Res> {
  factory _$$LastNameChangedCopyWith(
          _$LastNameChanged value, $Res Function(_$LastNameChanged) then) =
      __$$LastNameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String lastNameStr});
}

/// @nodoc
class __$$LastNameChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res, _$LastNameChanged>
    implements _$$LastNameChangedCopyWith<$Res> {
  __$$LastNameChangedCopyWithImpl(
      _$LastNameChanged _value, $Res Function(_$LastNameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastNameStr = null,
  }) {
    return _then(_$LastNameChanged(
      null == lastNameStr
          ? _value.lastNameStr
          : lastNameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LastNameChanged implements LastNameChanged {
  const _$LastNameChanged(this.lastNameStr);

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
            other is _$LastNameChanged &&
            (identical(other.lastNameStr, lastNameStr) ||
                other.lastNameStr == lastNameStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastNameStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LastNameChangedCopyWith<_$LastNameChanged> get copyWith =>
      __$$LastNameChangedCopyWithImpl<_$LastNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String confirmPasswordStr) confirmPasswordChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String firstNameStr) firstNameChanged,
    required TResult Function(String lastNameStr) lastNameChanged,
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
  const factory LastNameChanged(final String lastNameStr) = _$LastNameChanged;

  String get lastNameStr;
  @JsonKey(ignore: true)
  _$$LastNameChangedCopyWith<_$LastNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterPressedCopyWith<$Res> {
  factory _$$RegisterPressedCopyWith(
          _$RegisterPressed value, $Res Function(_$RegisterPressed) then) =
      __$$RegisterPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterPressedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res, _$RegisterPressed>
    implements _$$RegisterPressedCopyWith<$Res> {
  __$$RegisterPressedCopyWithImpl(
      _$RegisterPressed _value, $Res Function(_$RegisterPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterPressed implements RegisterPressed {
  const _$RegisterPressed();

  @override
  String toString() {
    return 'RegisterFormEvent.registerPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterPressed);
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
  const factory RegisterPressed() = _$RegisterPressed;
}

/// @nodoc
abstract class _$$RegisterAgainCopyWith<$Res> {
  factory _$$RegisterAgainCopyWith(
          _$RegisterAgain value, $Res Function(_$RegisterAgain) then) =
      __$$RegisterAgainCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterAgainCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res, _$RegisterAgain>
    implements _$$RegisterAgainCopyWith<$Res> {
  __$$RegisterAgainCopyWithImpl(
      _$RegisterAgain _value, $Res Function(_$RegisterAgain) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterAgain implements RegisterAgain {
  const _$RegisterAgain();

  @override
  String toString() {
    return 'RegisterFormEvent.registerAgain()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterAgain);
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
  const factory RegisterAgain() = _$RegisterAgain;
}

/// @nodoc
mixin _$RegisterFormState {
  Username get username => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  Password get confirmPassword => throw _privateConstructorUsedError;
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  FirstName get firstName => throw _privateConstructorUsedError;
  LastName get lastName => throw _privateConstructorUsedError;
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
abstract class _$$_RegisterFormStateCopyWith<$Res>
    implements $RegisterFormStateCopyWith<$Res> {
  factory _$$_RegisterFormStateCopyWith(_$_RegisterFormState value,
          $Res Function(_$_RegisterFormState) then) =
      __$$_RegisterFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Username username,
      Password password,
      Password confirmPassword,
      EmailAddress emailAddress,
      FirstName firstName,
      LastName lastName,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$_RegisterFormStateCopyWithImpl<$Res>
    extends _$RegisterFormStateCopyWithImpl<$Res, _$_RegisterFormState>
    implements _$$_RegisterFormStateCopyWith<$Res> {
  __$$_RegisterFormStateCopyWithImpl(
      _$_RegisterFormState _value, $Res Function(_$_RegisterFormState) _then)
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
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$_RegisterFormState(
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

class _$_RegisterFormState implements _RegisterFormState {
  const _$_RegisterFormState(
      {required this.username,
      required this.password,
      required this.confirmPassword,
      required this.emailAddress,
      required this.firstName,
      required this.lastName,
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
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'RegisterFormState(username: $username, password: $password, confirmPassword: $confirmPassword, emailAddress: $emailAddress, firstName: $firstName, lastName: $lastName, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterFormState &&
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
      showErrorMessages,
      isSubmitting,
      authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterFormStateCopyWith<_$_RegisterFormState> get copyWith =>
      __$$_RegisterFormStateCopyWithImpl<_$_RegisterFormState>(
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
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$_RegisterFormState;

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
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterFormStateCopyWith<_$_RegisterFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

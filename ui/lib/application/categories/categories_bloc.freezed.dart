// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCategories,
    required TResult Function(CategoryId categoryId) deleteCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCategories,
    TResult? Function(CategoryId categoryId)? deleteCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCategories,
    TResult Function(CategoryId categoryId)? deleteCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCategories value) fetchCategories,
    required TResult Function(DeleteCategory value) deleteCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCategories value)? fetchCategories,
    TResult? Function(DeleteCategory value)? deleteCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCategories value)? fetchCategories,
    TResult Function(DeleteCategory value)? deleteCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesEventCopyWith<$Res> {
  factory $CategoriesEventCopyWith(
          CategoriesEvent value, $Res Function(CategoriesEvent) then) =
      _$CategoriesEventCopyWithImpl<$Res, CategoriesEvent>;
}

/// @nodoc
class _$CategoriesEventCopyWithImpl<$Res, $Val extends CategoriesEvent>
    implements $CategoriesEventCopyWith<$Res> {
  _$CategoriesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchCategoriesCopyWith<$Res> {
  factory _$$FetchCategoriesCopyWith(
          _$FetchCategories value, $Res Function(_$FetchCategories) then) =
      __$$FetchCategoriesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCategoriesCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res, _$FetchCategories>
    implements _$$FetchCategoriesCopyWith<$Res> {
  __$$FetchCategoriesCopyWithImpl(
      _$FetchCategories _value, $Res Function(_$FetchCategories) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchCategories implements FetchCategories {
  const _$FetchCategories();

  @override
  String toString() {
    return 'CategoriesEvent.fetchCategories()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchCategories);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCategories,
    required TResult Function(CategoryId categoryId) deleteCategory,
  }) {
    return fetchCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCategories,
    TResult? Function(CategoryId categoryId)? deleteCategory,
  }) {
    return fetchCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCategories,
    TResult Function(CategoryId categoryId)? deleteCategory,
    required TResult orElse(),
  }) {
    if (fetchCategories != null) {
      return fetchCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCategories value) fetchCategories,
    required TResult Function(DeleteCategory value) deleteCategory,
  }) {
    return fetchCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCategories value)? fetchCategories,
    TResult? Function(DeleteCategory value)? deleteCategory,
  }) {
    return fetchCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCategories value)? fetchCategories,
    TResult Function(DeleteCategory value)? deleteCategory,
    required TResult orElse(),
  }) {
    if (fetchCategories != null) {
      return fetchCategories(this);
    }
    return orElse();
  }
}

abstract class FetchCategories implements CategoriesEvent {
  const factory FetchCategories() = _$FetchCategories;
}

/// @nodoc
abstract class _$$DeleteCategoryCopyWith<$Res> {
  factory _$$DeleteCategoryCopyWith(
          _$DeleteCategory value, $Res Function(_$DeleteCategory) then) =
      __$$DeleteCategoryCopyWithImpl<$Res>;
  @useResult
  $Res call({CategoryId categoryId});
}

/// @nodoc
class __$$DeleteCategoryCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res, _$DeleteCategory>
    implements _$$DeleteCategoryCopyWith<$Res> {
  __$$DeleteCategoryCopyWithImpl(
      _$DeleteCategory _value, $Res Function(_$DeleteCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
  }) {
    return _then(_$DeleteCategory(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as CategoryId,
    ));
  }
}

/// @nodoc

class _$DeleteCategory implements DeleteCategory {
  const _$DeleteCategory({required this.categoryId});

  @override
  final CategoryId categoryId;

  @override
  String toString() {
    return 'CategoriesEvent.deleteCategory(categoryId: $categoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCategory &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCategoryCopyWith<_$DeleteCategory> get copyWith =>
      __$$DeleteCategoryCopyWithImpl<_$DeleteCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCategories,
    required TResult Function(CategoryId categoryId) deleteCategory,
  }) {
    return deleteCategory(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCategories,
    TResult? Function(CategoryId categoryId)? deleteCategory,
  }) {
    return deleteCategory?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCategories,
    TResult Function(CategoryId categoryId)? deleteCategory,
    required TResult orElse(),
  }) {
    if (deleteCategory != null) {
      return deleteCategory(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCategories value) fetchCategories,
    required TResult Function(DeleteCategory value) deleteCategory,
  }) {
    return deleteCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCategories value)? fetchCategories,
    TResult? Function(DeleteCategory value)? deleteCategory,
  }) {
    return deleteCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCategories value)? fetchCategories,
    TResult Function(DeleteCategory value)? deleteCategory,
    required TResult orElse(),
  }) {
    if (deleteCategory != null) {
      return deleteCategory(this);
    }
    return orElse();
  }
}

abstract class DeleteCategory implements CategoriesEvent {
  const factory DeleteCategory({required final CategoryId categoryId}) =
      _$DeleteCategory;

  CategoryId get categoryId;
  @JsonKey(ignore: true)
  _$$DeleteCategoryCopyWith<_$DeleteCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoriesState {
  Option<Either<CategoryFailure, List<Category>>> get failureOrCategories =>
      throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  bool get isDeleting => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoriesStateCopyWith<CategoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesStateCopyWith<$Res> {
  factory $CategoriesStateCopyWith(
          CategoriesState value, $Res Function(CategoriesState) then) =
      _$CategoriesStateCopyWithImpl<$Res, CategoriesState>;
  @useResult
  $Res call(
      {Option<Either<CategoryFailure, List<Category>>> failureOrCategories,
      bool showErrorMessages,
      bool isFetching,
      bool isDeleting});
}

/// @nodoc
class _$CategoriesStateCopyWithImpl<$Res, $Val extends CategoriesState>
    implements $CategoriesStateCopyWith<$Res> {
  _$CategoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrCategories = null,
    Object? showErrorMessages = null,
    Object? isFetching = null,
    Object? isDeleting = null,
  }) {
    return _then(_value.copyWith(
      failureOrCategories: null == failureOrCategories
          ? _value.failureOrCategories
          : failureOrCategories // ignore: cast_nullable_to_non_nullable
              as Option<Either<CategoryFailure, List<Category>>>,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleting: null == isDeleting
          ? _value.isDeleting
          : isDeleting // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoriesListStateCopyWith<$Res>
    implements $CategoriesStateCopyWith<$Res> {
  factory _$$_CategoriesListStateCopyWith(_$_CategoriesListState value,
          $Res Function(_$_CategoriesListState) then) =
      __$$_CategoriesListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Either<CategoryFailure, List<Category>>> failureOrCategories,
      bool showErrorMessages,
      bool isFetching,
      bool isDeleting});
}

/// @nodoc
class __$$_CategoriesListStateCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$_CategoriesListState>
    implements _$$_CategoriesListStateCopyWith<$Res> {
  __$$_CategoriesListStateCopyWithImpl(_$_CategoriesListState _value,
      $Res Function(_$_CategoriesListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrCategories = null,
    Object? showErrorMessages = null,
    Object? isFetching = null,
    Object? isDeleting = null,
  }) {
    return _then(_$_CategoriesListState(
      failureOrCategories: null == failureOrCategories
          ? _value.failureOrCategories
          : failureOrCategories // ignore: cast_nullable_to_non_nullable
              as Option<Either<CategoryFailure, List<Category>>>,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleting: null == isDeleting
          ? _value.isDeleting
          : isDeleting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CategoriesListState implements _CategoriesListState {
  const _$_CategoriesListState(
      {required this.failureOrCategories,
      required this.showErrorMessages,
      required this.isFetching,
      required this.isDeleting});

  @override
  final Option<Either<CategoryFailure, List<Category>>> failureOrCategories;
  @override
  final bool showErrorMessages;
  @override
  final bool isFetching;
  @override
  final bool isDeleting;

  @override
  String toString() {
    return 'CategoriesState(failureOrCategories: $failureOrCategories, showErrorMessages: $showErrorMessages, isFetching: $isFetching, isDeleting: $isDeleting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoriesListState &&
            (identical(other.failureOrCategories, failureOrCategories) ||
                other.failureOrCategories == failureOrCategories) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.isDeleting, isDeleting) ||
                other.isDeleting == isDeleting));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrCategories,
      showErrorMessages, isFetching, isDeleting);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoriesListStateCopyWith<_$_CategoriesListState> get copyWith =>
      __$$_CategoriesListStateCopyWithImpl<_$_CategoriesListState>(
          this, _$identity);
}

abstract class _CategoriesListState implements CategoriesState {
  const factory _CategoriesListState(
      {required final Option<Either<CategoryFailure, List<Category>>>
          failureOrCategories,
      required final bool showErrorMessages,
      required final bool isFetching,
      required final bool isDeleting}) = _$_CategoriesListState;

  @override
  Option<Either<CategoryFailure, List<Category>>> get failureOrCategories;
  @override
  bool get showErrorMessages;
  @override
  bool get isFetching;
  @override
  bool get isDeleting;
  @override
  @JsonKey(ignore: true)
  _$$_CategoriesListStateCopyWith<_$_CategoriesListState> get copyWith =>
      throw _privateConstructorUsedError;
}

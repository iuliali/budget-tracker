part of 'categories_bloc.dart';

@freezed
abstract class CategoriesState with _$CategoriesState {

  const factory CategoriesState({
    required Option<Either<CategoryFailure, List<Category>>> failureOrCategories,
    required bool showErrorMessages,
    required bool isFetching,
    required bool isDeleting,
  }) = _CategoriesListState;

  factory CategoriesState.initial() => CategoriesState(
    failureOrCategories: none(),
    showErrorMessages: false,
    isFetching: false,
    isDeleting: false,
  );
}

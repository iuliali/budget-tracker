part of 'category_form_bloc.dart';

@freezed
abstract class CategoryFormState with _$CategoryFormState {
  const factory CategoryFormState({
    required Option<Category> category,
    required CategoryName name,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSaving,
    required Option<Either<CategoryFailure, Unit>> saveFailureOrSuccessOption,
  }) = _CategoryFormState;

  factory CategoryFormState.initial() => CategoryFormState(
        category: none(),
        name: CategoryName(''),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}

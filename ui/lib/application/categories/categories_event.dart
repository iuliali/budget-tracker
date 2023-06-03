part of 'categories_bloc.dart';

@freezed
abstract class CategoriesEvent with _$CategoriesEvent {
  const factory CategoriesEvent.fetch() = FetchCategories;
  const factory CategoriesEvent.selectCategory({
    required CategoryId categoryId,
  }) = SelectCategory;
  const factory CategoriesEvent.deleteCategory({
    required CategoryId categoryId,
  }) = DeleteCategory;
}

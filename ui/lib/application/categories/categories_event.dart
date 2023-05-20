part of 'categories_bloc.dart';

@freezed
abstract class CategoriesEvent with _$CategoriesEvent {
  const factory CategoriesEvent.fetchCategories() = FetchCategories;
  const factory CategoriesEvent.deleteCategory({
    required CategoryId categoryId,
  }) = DeleteCategory;
}

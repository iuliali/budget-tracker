part of 'category_form_bloc.dart';

@freezed
abstract class CategoryFormEvent with _$CategoryFormEvent {
  const factory CategoryFormEvent.initialized(Option<Category> initialCategoryOption) = Initialized;
  const factory CategoryFormEvent.nameChanged(String nameStr) = NameChanged;
  const factory CategoryFormEvent.amountChanged(String amountStr) = AmountChanged;
  const factory CategoryFormEvent.saved() = Saved;
}


import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/categories/entities/category.dart';
import '../../../domain/categories/failures.dart';
import '../../../domain/categories/repository.dart';
import '../../../domain/categories/value_objects.dart';

part 'category_form_event.dart';
part 'category_form_state.dart';
part 'category_form_bloc.freezed.dart';

@injectable
class CategoryFormBloc extends Bloc<CategoryFormEvent, CategoryFormState> {
  final ICategoryRepository _categoryRepository;

  CategoryFormBloc(this._categoryRepository) : super(CategoryFormState.initial()) {
    on<Initialized>(_onInitialized);
    on<NameChanged>(_onNameChanged);
    on<Saved>(_onSaved);
  }

  void _onInitialized(
    Initialized event,
    Emitter<CategoryFormState> emit,
  ) async {
    emit(state.copyWith(
      category: event.initialCategoryOption,
      showErrorMessages: false,
      isEditing: event.initialCategoryOption.isSome(),
    ));
  }

  void _onNameChanged(
    NameChanged event,
    Emitter<CategoryFormState> emit,
  ) async {
    emit(state.copyWith(
      name: CategoryName(event.nameStr),
      saveFailureOrSuccessOption: none(),
    ));
  }

void _onSaved(
    Saved event,
    Emitter<CategoryFormState> emit,
  ) async {
    Either<CategoryFailure, Unit>? failureOrSuccess;
    emit(state.copyWith(
      isSaving: true,
      saveFailureOrSuccessOption: none(),
    ));
    
    if (state.name.isValid()) {
      final category = Category(
        name: state.name,
        id: state.category.fold(() => CategoryId(0), (a) => a.id),
      );
      failureOrSuccess = state.isEditing
          ? await _categoryRepository.update(category: category)
          : await _categoryRepository.create(categoryName: state.name);
    }
    emit(state.copyWith(
      isSaving: false,
      showErrorMessages: true,
      saveFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }
}

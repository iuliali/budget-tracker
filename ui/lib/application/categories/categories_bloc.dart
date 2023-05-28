import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/categories/repository.dart';
import '../../domain/categories/entities/category.dart';
import '../../domain/categories/failures.dart';
import '../../domain/categories/value_objects.dart';

part 'categories_event.dart';
part 'categories_state.dart';
part 'categories_bloc.freezed.dart';

@injectable
class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final ICategoryRepository _categoryFacade;

  CategoriesBloc(this._categoryFacade) : super(CategoriesState.initial()) {
    on<FetchCategories>(_onFetchCategories);
    on<DeleteCategory>(_onDeleteCategory);
  }

  Future _onFetchCategories(FetchCategories event, Emitter<CategoriesState> emit) async {
    if (state.isFetching) return;
    emit(state.copyWith(
      isFetching: true,
      failureOrCategories: none(),
    ));

    final failureOrSuccess = await _categoryFacade.getAll();

    emit(state.copyWith(
      failureOrCategories: some(failureOrSuccess),
      isFetching: false,
    ));
  }

  Future _onDeleteCategory(DeleteCategory event, Emitter<CategoriesState> emit) async {
    if (state.isDeleting) return;
    emit(state.copyWith(
      isDeleting: true,
      failureOrCategories: none(),
    ));

    final failureOrSuccess = await _categoryFacade.delete(categoryId: event.categoryId);
    if (failureOrSuccess.isRight()) {
      final failureOrCategories = await _categoryFacade.getAll();
      emit(state.copyWith(
        failureOrCategories: some(failureOrCategories),
      ));
    }
    emit(state.copyWith(
      isDeleting: false,
    ));
  }


}

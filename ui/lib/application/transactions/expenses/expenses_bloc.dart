import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/transactions/entities/expense.dart';
import '../../../domain/transactions/failures.dart';
import '../../../domain/transactions/repositories/expense.dart';
import '../../../domain/transactions/value_objects.dart';

part 'expenses_bloc.freezed.dart';
part 'expenses_event.dart';
part 'expenses_state.dart';

@injectable
class ExpensesBloc extends Bloc<ExpensesEvent, ExpensesState> {
  final IExpenseRepository _expenseRepository;

  ExpensesBloc(this._expenseRepository) : super(ExpensesState.initial()) {
    on<_GetExpenses>(_onGetExpenses);
    on<_DeleteExpense>(_onDeleteExpense);
  }

  Option<Expense> getExpense(ExpenseId expenseId) {
    return state.failureOrExpenses.fold(
      () => none(),
      (a) => a.fold(
        (l) => none(),
        (r) => optionOf(r.firstWhere((e) => e.id == expenseId)),
      ),
    );
  }

  Future<void> _onGetExpenses(_GetExpenses event, Emitter<ExpensesState> emit) async {
    emit(ExpensesState.loading());
    final failureOrExpenses = await _expenseRepository.getAll();
    emit(
      ExpensesState(
        failureOrExpenses: some(failureOrExpenses),
        showErrorMessages: false,
        isFetching: false,
        isDeleting: false,
      ),
    );
  }

  Future<void> _onDeleteExpense(_DeleteExpense event, Emitter<ExpensesState> emit) async {
    emit(state.copyWith(isDeleting: true));
    await _expenseRepository.delete(event.expenseId);
    final failureOrExpenses = await _expenseRepository.getAll();
    emit(state.copyWith(
      failureOrExpenses: some(failureOrExpenses),
      showErrorMessages: false,
      isDeleting: false,
    ));
  }
}

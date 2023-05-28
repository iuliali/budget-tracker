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
}

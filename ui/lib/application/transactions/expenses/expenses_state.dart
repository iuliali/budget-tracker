part of 'expenses_bloc.dart';

@freezed
abstract class ExpensesState with _$ExpensesState {
  const factory ExpensesState({
    required Option<Either<ExpenseFailure, List<Expense>>> failureOrExpenses,
    required bool showErrorMessages,
    required bool isFetching,
    required bool isDeleting,
  }) = _ExpensesListState;

  factory ExpensesState.initial() => ExpensesState(
        failureOrExpenses: none(),
        showErrorMessages: false,
        isFetching: false,
        isDeleting: false,
      );

  factory ExpensesState.loading() => ExpensesState(
        failureOrExpenses: none(),
        showErrorMessages: false,
        isFetching: true,
        isDeleting: false,
      );
}

part of 'expenses_bloc.dart';

@freezed
abstract class ExpensesEvent with _$ExpensesEvent {
  const factory ExpensesEvent.deleteExpense(ExpenseId expenseId) = _DeleteExpense;
  const factory ExpensesEvent.getExpenses() = _GetExpenses;
}

part of 'expense_form_bloc.dart';

@freezed
abstract class ExpenseFormEvent with _$ExpenseFormEvent {
  const factory ExpenseFormEvent.initialized(Option<Expense> initialExpenseOption) = _Initialized;
  const factory ExpenseFormEvent.recipientChanged(String recipientStr) = _RecipientChanged;
  const factory ExpenseFormEvent.amountChanged(String amountStr) = _AmountChanged;
  const factory ExpenseFormEvent.currencyChanged(String currencyStr) = _CurrencyChanged;
  const factory ExpenseFormEvent.saved() = _Saved;
}

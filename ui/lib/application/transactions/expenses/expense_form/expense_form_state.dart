part of 'expense_form_bloc.dart';

@freezed
abstract class ExpenseFormState with _$ExpenseFormState {
  const factory ExpenseFormState({
    required Option<Expense> expense,
    required Option<CategoryId> categoryId,
    required TransactionRecipient recipient,
    required TransactionAmount amount,
    required TransactionCurrency currency,
    required bool showErrorMessages,
    required bool isSaving,
    required bool isEditing,
    required Option<Either<ExpenseFailure, Unit>> saveFailureOrSuccessOption,
  }) = _ExpenseFormState;

  factory ExpenseFormState.initial() => ExpenseFormState(
        expense: none(),
        categoryId: none(),
        recipient: TransactionRecipient(''),
        amount: TransactionAmount(0),
        currency: TransactionCurrency('RON'),
        showErrorMessages: false,
        isSaving: false,
        isEditing: false,
        saveFailureOrSuccessOption: none(),
      );
}

part of 'income_form_bloc.dart';

@freezed
abstract class IncomeFormState with _$IncomeFormState {
  const factory IncomeFormState({
    required Option<Income> income,
    required Option<CategoryId> categoryId,
    required TransactionSender sender,
    required TransactionAmount amount,
    required TransactionCurrency currency,
    required bool showErrorMessages,
    required bool isSaving,
    required bool isEditing,
    required Option<Either<IncomeFailure, Unit>> saveFailureOrSuccessOption,
  }) = _IncomeFormState;

  factory IncomeFormState.initial() => IncomeFormState(
        income: none(),
        categoryId: none(),
        sender: TransactionSender(''),
        amount: TransactionAmount(0),
        currency: TransactionCurrency('RON'),
        showErrorMessages: false,
        isSaving: false,
        isEditing: false,
        saveFailureOrSuccessOption: none(),
      );
}

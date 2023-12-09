part of 'income_form_bloc.dart';

@freezed
abstract class IncomeFormEvent with _$IncomeFormEvent {
  const factory IncomeFormEvent.initialized(Option<Income> initialIncomeOption) = _Initialized;
  const factory IncomeFormEvent.categoryIdChanged(CategoryId categoryId) = _CategoryIdChanged;
  const factory IncomeFormEvent.senderChanged(String senderStr) = _SenderChanged;
  const factory IncomeFormEvent.amountChanged(String amountStr) = _AmountChanged;
  const factory IncomeFormEvent.currencyChanged(String currencyStr) = _CurrencyChanged;
  const factory IncomeFormEvent.saved() = _Saved;
}

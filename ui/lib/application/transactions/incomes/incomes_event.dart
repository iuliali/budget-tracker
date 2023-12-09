part of 'incomes_bloc.dart';

@freezed
abstract class IncomesEvent with _$IncomesEvent {
  const factory IncomesEvent.deleteIncome(IncomeId incomeId) = _DeleteIncome;
  const factory IncomesEvent.getIncomes() = _GetIncomes;
}

import 'package:bloc/bloc.dart';
import 'package:budget_tracker/domain/transactions/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/transactions/entities/income.dart';
import '../../../../domain/transactions/failures.dart';
import '../../../../domain/transactions/repositories/income.dart';

part 'income_form_event.dart';
part 'income_form_state.dart';
part 'income_form_bloc.freezed.dart';

@injectable
class IncomeFormBloc extends Bloc<IncomeFormEvent, IncomeFormState> {
  final IIncomeRepository _incomeRepository;

  IncomeFormBloc(this._incomeRepository) : super(IncomeFormState.initial()) {
    on<_Initialized>(_onInitialized);
    on<_SenderChanged>(_onSenderChanged);
    on<_AmountChanged>(_onAmountChanged);
    on<_CurrencyChanged>(_onCurrencyChanged);
    on<_Saved>(_onSaved);
  }

  void _onInitialized(_Initialized event, Emitter<IncomeFormState> emit) {
    event.initialIncomeOption.fold(
      () => emit(state),
      (initialIncome) {
        emit(state.copyWith(
          income: some(initialIncome),
          isEditing: true,
        ));
      },
    );
  }

  void _onSenderChanged(_SenderChanged event, Emitter<IncomeFormState> emit) {
    emit(state.copyWith(
      sender: TransactionSender(event.senderStr),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onAmountChanged(_AmountChanged event, Emitter<IncomeFormState> emit) {
    emit(state.copyWith(
      amount: TransactionAmount(double.parse(event.amountStr)),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onCurrencyChanged(_CurrencyChanged event, Emitter<IncomeFormState> emit) {
    emit(state.copyWith(
      currency: TransactionCurrency(event.currencyStr),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onSaved(_Saved event, Emitter<IncomeFormState> emit) async {
    emit(state.copyWith(
      isSaving: true,
      saveFailureOrSuccessOption: none(),
    ));

    final income = Income(
      id: state.income.fold(() => IncomeId(0), (a) => a.id),
      sender: state.sender,
      amount: state.amount,
      currency: state.currency,
      date: TransactionDate(DateTime.now()),
    );

    final isEditing = state.isEditing;
    final result = isEditing
        ? await _incomeRepository.update(income)
        : await _incomeRepository.create(income);

    emit(state.copyWith(
      isSaving: false,
      saveFailureOrSuccessOption: some(result),
    ));
  }
}

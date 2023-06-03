import 'package:bloc/bloc.dart';
import 'package:budget_tracker/domain/categories/value_objects.dart';
import 'package:budget_tracker/domain/transactions/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/transactions/entities/expense.dart';
import '../../../../domain/transactions/failures.dart';
import '../../../../domain/transactions/repositories/expense.dart';

part 'expense_form_event.dart';
part 'expense_form_state.dart';
part 'expense_form_bloc.freezed.dart';

@injectable
class ExpenseFormBloc extends Bloc<ExpenseFormEvent, ExpenseFormState> {
  final IExpenseRepository _expenseRepository;

  ExpenseFormBloc(this._expenseRepository) : super(ExpenseFormState.initial()) {
    on<_Initialized>(_onInitialized);
    on<_CategoryIdChanged>(_onCategoryIdChanged);
    on<_RecipientChanged>(_onRecipientChanged);
    on<_AmountChanged>(_onAmountChanged);
    on<_CurrencyChanged>(_onCurrencyChanged);
    on<_Saved>(_onSaved);
  }

  void _onInitialized(_Initialized event, Emitter<ExpenseFormState> emit) {
    event.initialExpenseOption.fold(
      () => emit(state),
      (initialExpense) {
        emit(state.copyWith(
          expense: some(initialExpense),
          isEditing: true,
        ));
      },
    );
  }

  void _onCategoryIdChanged(_CategoryIdChanged event, Emitter<ExpenseFormState> emit) {
    emit(state.copyWith(
      categoryId: some(event.categoryId),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onRecipientChanged(_RecipientChanged event, Emitter<ExpenseFormState> emit) {
    emit(state.copyWith(
      recipient: TransactionRecipient(event.recipientStr),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onAmountChanged(_AmountChanged event, Emitter<ExpenseFormState> emit) {
    emit(state.copyWith(
      amount: TransactionAmount(double.parse(event.amountStr)),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onCurrencyChanged(_CurrencyChanged event, Emitter<ExpenseFormState> emit) {
    emit(state.copyWith(
      currency: TransactionCurrency(event.currencyStr),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onSaved(_Saved event, Emitter<ExpenseFormState> emit) async {
    if (state.categoryId.isNone()) {
      emit(state.copyWith(
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(left(const ExpenseFailure.categoryNotSelected()))
      ));
      return;
    }

    emit(state.copyWith(
      isSaving: true,
      saveFailureOrSuccessOption: none(),
    ));

    final expense = Expense(
      id: state.expense.fold(() => ExpenseId(0), (a) => a.id),
      categoryId: state.categoryId.getOrElse(() => CategoryId(0)),
      recipient: state.recipient,
      amount: state.amount,
      currency: state.currency,
      date: TransactionDate(DateTime.now()),
    );

    final isEditing = state.isEditing;
    final result = isEditing
        ? await _expenseRepository.update(expense)
        : await _expenseRepository.create(expense);

    emit(state.copyWith(
      isSaving: false,
      saveFailureOrSuccessOption: some(result),
    ));
  }
}

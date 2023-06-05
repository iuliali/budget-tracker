import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/debt/entities/group.dart';
import '../../../domain/transactions/entities/expense.dart';
import '../../../domain/debt/failures.dart';
import '../../../domain/debt/repositories/split.dart';
import '../../../domain/debt/value_objects.dart';
import '../../../domain/transactions/value_objects.dart';

part 'split_form_event.dart';
part 'split_form_state.dart';
part 'split_form_bloc.freezed.dart';

@injectable
class SplitFormBloc extends Bloc<SplitFormEvent, SplitFormState> {
  final ISplitRepository _debtRepository;

  SplitFormBloc(this._debtRepository) : super(SplitFormState.initial()) {
    on<Initialized>(_onInitialized);
    on<AmountChanged>(_onAmountChanged);
    on<DeptAmountChanged>(_onDeptAmountChanged);
    on<AddParticipant>(_onAddParticipant);
    on<RemoveParticipant>(_onRemoveParticipant);
    on<IsEquallyDividedChanged>(_onIsEquallyDividedChanged);
    on<Saved>(_onSaved);
  }

  void _onInitialized(
    Initialized event,
    Emitter<SplitFormState> emit,
  ) async {
    final transactionAmount = event.initialExpenseOption.fold(
      () => TransactionAmount(0),
      (a) => a.amount,
    );
    final equallyDividedAmount =
        transactionAmount.getOrCrash() / event.group.members.length;
    emit(state.copyWith(
      groupOption: some(event.group),
      amount: transactionAmount,
      deptAmounts: event.group.members
          .map((member) => {member.id: DebtAmount(equallyDividedAmount)})
          .toList(),
      showErrorMessages: false,
    ));
  }

  void _onAmountChanged(
    AmountChanged event,
    Emitter<SplitFormState> emit,
  ) async {
    final transactionAmount = TransactionAmount.fromString(event.amountStr);
    final equallyDividedAmount =
        transactionAmount.getOrElse(0.0) / state.deptAmounts.length;
    emit(state.copyWith(
      amount: transactionAmount,
      deptAmounts: state.deptAmounts.map((deptAmount) {
        return {deptAmount.keys.first: DebtAmount(equallyDividedAmount)};
      }).toList(),
      showErrorMessages: false,
    ));
  }

  void _onDeptAmountChanged(
    DeptAmountChanged event,
    Emitter<SplitFormState> emit,
  ) async {
    final debtAmounts = state.deptAmounts.map((deptAmount) {
      if (deptAmount.keys.first == event.memberId) {
        return {event.memberId: DebtAmount.fromString(event.debtAmountStr)};
      } else {
        return deptAmount;
      }
    }).toList();

    final totalDeptAmount = debtAmounts.fold(
      0.0,
          (previousValue, deptAmount) =>
      previousValue + deptAmount.values.first.getOrCrash(),
    );

    emit(state.copyWith(
      amount: TransactionAmount(totalDeptAmount),
      deptAmounts: debtAmounts,
      showErrorMessages: false,
    ));
  }


  void _onAddParticipant(
    AddParticipant event,
    Emitter<SplitFormState> emit,
  ) async {
    if (state.isEquallyDivided) {
      final equallyDividedAmount =
          state.amount.getOrCrash() / (state.deptAmounts.length + 1);
      emit(state.copyWith(
        deptAmounts: [
          ...state.deptAmounts
            .map((deptAmount) => {
                  deptAmount.keys.first: DebtAmount(equallyDividedAmount)
                })
            .toList(),
          {event.memberId: DebtAmount(equallyDividedAmount)}
        ],
        showErrorMessages: false,
      ));
      return;
    }

    emit(state.copyWith(
      deptAmounts: [
        ...state.deptAmounts,
        {event.memberId: DebtAmount(0)}
      ],
      showErrorMessages: false,
    ));
  }

  void _onRemoveParticipant(
    RemoveParticipant event,
    Emitter<SplitFormState> emit,
  ) async {
    if (state.isEquallyDivided){
      final equallyDividedAmount =
          state.amount.getOrCrash() / (state.deptAmounts.length - 1);
      emit(state.copyWith(
        deptAmounts: state.deptAmounts
            .where((deptAmount) => deptAmount.keys.first != event.memberId)
            .map((deptAmount) => {
                  deptAmount.keys.first: DebtAmount(equallyDividedAmount)
                })
            .toList(),
        showErrorMessages: false,
      ));
      return;
    }

    emit(state.copyWith(
      deptAmounts: state.deptAmounts
          .where((deptAmount) => deptAmount.keys.first != event.memberId)
          .toList(),
      showErrorMessages: false,
    ));
  }

  void _onIsEquallyDividedChanged(
    IsEquallyDividedChanged event,
    Emitter<SplitFormState> emit,
  ) async {
    emit(state.copyWith(
      isEquallyDivided: event.isEquallyDividedBool,
    ));
  }

  void _onSaved(
    Saved event,
    Emitter<SplitFormState> emit,
  ) async {
    Either<SplitFailure, Unit> failureOrSuccess;

    emit(state.copyWith(
      isSaving: true,
      saveFailureOrSuccessOption: none(),
    ));

    final isAmountValid = state.amount.isValid();
    final isDeptAmountsValid = state.deptAmounts
        .every((deptAmount) => deptAmount.values.first.isValid());
    if (isAmountValid && isDeptAmountsValid) {
      failureOrSuccess = left(const SplitFailure.unexpected());
    }

    if (state.groupOption.isNone()) {
      failureOrSuccess = left(const SplitFailure.unexpected());
    }
    failureOrSuccess = await _debtRepository.createSplit(
      groupId: state.groupOption.fold(() => null, (a) => a.id)!,
      amount: state.amount,
      deptAmounts: state.deptAmounts,
    );
    emit(state.copyWith(
      isSaving: false,
      showErrorMessages: true,
      saveFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/transactions/entities/income.dart';
import '../../../domain/transactions/failures.dart';
import '../../../domain/transactions/repositories/income.dart';
import '../../../domain/transactions/value_objects.dart';

part 'incomes_bloc.freezed.dart';
part 'incomes_event.dart';
part 'incomes_state.dart';

@injectable
class IncomesBloc extends Bloc<IncomesEvent, IncomesState> {
  final IIncomeRepository _incomeRepository;

  IncomesBloc(this._incomeRepository) : super(IncomesState.initial()) {
    on<_GetIncomes>(_onGetIncomes);
  }

  Future<void> _onGetIncomes(_GetIncomes event, Emitter<IncomesState> emit) async {
    emit(IncomesState.loading());
    final failureOrIncomes = await _incomeRepository.getAll();
    emit(
      IncomesState(
        failureOrIncomes: some(failureOrIncomes),
        showErrorMessages: false,
        isFetching: false,
        isDeleting: false,
      ),
    );
  }


}

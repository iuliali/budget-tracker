part of 'incomes_bloc.dart';

@freezed
abstract class IncomesState with _$IncomesState {
  const factory IncomesState({
    required Option<Either<IncomeFailure, List<Income>>> failureOrIncomes,
    required bool showErrorMessages,
    required bool isFetching,
    required bool isDeleting,
  }) = _IncomesListState;

  factory IncomesState.initial() => IncomesState(
        failureOrIncomes: none(),
        showErrorMessages: false,
        isFetching: false,
        isDeleting: false,
      );

  factory IncomesState.loading() => IncomesState(
        failureOrIncomes: none(),
        showErrorMessages: false,
        isFetching: true,
        isDeleting: false,
      );
}

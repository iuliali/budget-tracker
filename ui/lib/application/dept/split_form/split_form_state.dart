part of 'split_form_bloc.dart';

@freezed
abstract class SplitFormState with _$SplitFormState {
  const factory SplitFormState({
    required Option<Group> groupOption,
    required TransactionAmount amount,
    required List<Map<MemberId, DebtAmount>> deptAmounts,
    required bool showErrorMessages,
    required bool isSaving,
    required bool isEquallyDivided,
    required Option<Either<SplitFailure, Unit>> saveFailureOrSuccessOption,
  }) = _SplitFormState;

  factory SplitFormState.initial() => SplitFormState(
        groupOption: none(),
        amount: TransactionAmount(0),
        deptAmounts: [],
        showErrorMessages: false,
        isSaving: false,
        isEquallyDivided: true,
        saveFailureOrSuccessOption: none(),
  );
}

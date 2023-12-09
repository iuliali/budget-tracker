part of 'split_form_bloc.dart';

@freezed
abstract class SplitFormEvent with _$SplitFormEvent {
  const factory SplitFormEvent.initialized(
      Group group, Option<Expense> initialExpenseOption) = Initialized;
  const factory SplitFormEvent.amountChanged(String amountStr) = AmountChanged;
  const factory SplitFormEvent.deptAmountChanged(MemberId memberId, String debtAmountStr) = DeptAmountChanged;
  const factory SplitFormEvent.addParticipant(MemberId memberId) = AddParticipant;
  const factory SplitFormEvent.removeParticipant(MemberId memberId) = RemoveParticipant;
  const factory SplitFormEvent.isEquallyDividedChanged(bool isEquallyDividedBool) = IsEquallyDividedChanged;
  const factory SplitFormEvent.saved() = Saved;
}

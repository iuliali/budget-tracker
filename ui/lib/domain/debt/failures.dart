import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class GroupFailure with _$GroupFailure {
  const factory GroupFailure.unexpected() = _GroupUnexpected;
  const factory GroupFailure.notFound() = _GroupNotFound;
  const factory GroupFailure.unableToUpdate() = _GroupUnableToUpdate;
  const factory GroupFailure.unableToDelete() = _GroupUnableToDelete;
}

@freezed
abstract class MemberFailure with _$MemberFailure {
  const factory MemberFailure.unexpected() = _MemberUnexpected;
  const factory MemberFailure.notFound() = _MemberNotFound;
  const factory MemberFailure.unableToUpdate() = _MemberUnableToUpdate;
  const factory MemberFailure.unableToDelete() = _MemberUnableToDelete;
}

@freezed
abstract class SplitFailure with _$SplitFailure {
  const factory SplitFailure.unexpected() = _SplitUnexpected;
  const factory SplitFailure.serverError() = _SplitServerError;
  const factory SplitFailure.notFound() = _SplitNotFound;
  const factory SplitFailure.insufficientParticipants() = _SplitInsufficientParticipants;
  const factory SplitFailure.debtSumNotEqualAmount() = _SplitDebtSumNotEqualAmount;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class GroupFailure with _$GroupFailure {
  const factory GroupFailure.unexpected() = _Unexpected;
  const factory GroupFailure.notFound() = _NotFound;
  const factory GroupFailure.unableToUpdate() = _UnableToUpdate;
  const factory GroupFailure.unableToDelete() = _UnableToDelete;
}
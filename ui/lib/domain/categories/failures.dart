import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class CategoryFailure with _$CategoryFailure {
  const factory CategoryFailure.unexpected() = _Unexpected;
  const factory CategoryFailure.serverError() = _ServerError;
  const factory CategoryFailure.categoryAlreadyExists() = _CategoryAlreadyExists;
  const factory CategoryFailure.categoryNotFound() = _CategoryNotFound;
}
import 'package:flutter_clean_core/core/base/data/remote/models/pagination.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  const factory Result.success({required T data, String? message}) = Success<T>;

  const factory Result.successWithPages({required T contents, String? message, Pagination? pagination}) = SuccessWithPages<T>;

  const factory Result.failure({String? message}) = Failure<T>;
}

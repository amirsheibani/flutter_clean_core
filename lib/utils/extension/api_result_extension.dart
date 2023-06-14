import 'package:flutter_clean_core/core/base/data/remote/models/base_response.dart';
import 'package:flutter_clean_core/core/service/network/network_state/api_result.dart';

import 'network_exceptions.dart';

extension ErrorApiResultExtension on Object {
  Result<T> toResult<T>(StackTrace? stackTrace) {
    final error = NetworkExceptions.getDioException(this, stackTrace);
    final str = NetworkExceptions.getErrorMessage(error ?? const NetworkExceptions.unexpectedError());
    return Result.failure(message: str);
  }
}

extension SuccessResultExtension on BaseSingleResponse {
  Result<T> toResult<T>() {
    var apiResult = Result<T>.success(data: data, message: message);
    return apiResult;
  }
}

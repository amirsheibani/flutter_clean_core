import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_clean_core/core/base/data/remote/models/base_response.dart';
import 'package:flutter_clean_core/core/service/network/network_state/api_result.dart';

import 'network_exceptions.dart';

extension ErrorApiResultExtension on Object {
  Result<T> toResult<T>({StackTrace? stackTrace}) {
    String message = '';
    if (this is DioException) {
      final error = NetworkExceptions.getDioException(this, stackTrace);
      message = NetworkExceptions.getErrorMessage(error ?? const NetworkExceptions.unexpectedError());
    } else if (this is SocketException) {
      message = stackTrace?.toString() ?? toString();
    }
    return Result.failure(message: message);
  }
}

extension SuccessResultExtension on BaseSingleResponse {
  Result<T> toResult<T>() {
    var apiResult = Result<T>.success(data: data, message: message);
    return apiResult;
  }
}

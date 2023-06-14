import 'dart:js' as js;

import 'package:flutter_clean_core/core/base/domain/entities/token_entity.dart';
import 'package:flutter_clean_core/core/base/domain/repositories/token/token_repository.dart';
import 'package:flutter_clean_core/core/base/domain/usecase/base_usecase.dart';
import 'package:flutter_clean_core/core/service/network/network_state/api_result.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class UpdateTokenUseCase extends BaseUseCaseNoArgs<Result<bool>> {
  final TokenRepository _repository;

  UpdateTokenUseCase(this._repository);

  @override
  Future<Result<bool>> call() {
    var jsContext = js.context;
    var kcToken = jsContext["kc"]["token"];
    var kcTokenRefresh = jsContext["kc"]["refreshToken"];
    TokenEntity tokenEntity = TokenEntity(refreshToken: kcTokenRefresh, accessToken: kcToken);
    return _repository.updateToken(tokenEntity);
  }
}

import 'package:flutter_clean_core/core/base/domain/repositories/token/token_repository.dart';
import 'package:flutter_clean_core/core/base/domain/usecase/base_usecase.dart';
import 'package:flutter_clean_core/core/service/network/network_state/api_result.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class RemoveTokenUseCase extends BaseUseCaseNoArgs<Result<bool?>> {
  final TokenRepository _repository;

  RemoveTokenUseCase(this._repository);

  @override
  Future<Result<bool?>> call() {
    return _repository.removeToken();
  }
}

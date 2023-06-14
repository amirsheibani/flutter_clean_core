import 'package:flutter_clean_core/core/base/domain/entities/token_entity.dart';
import 'package:flutter_clean_core/core/base/domain/repositories/token/token_repository.dart';
import 'package:flutter_clean_core/core/base/domain/usecase/base_usecase.dart';
import 'package:flutter_clean_core/core/service/network/network_state/api_result.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ReadTokenUseCase extends BaseUseCaseNoArgs<Result<TokenEntity?>> {
  final TokenRepository _repository;

  ReadTokenUseCase(this._repository);

  @override
  Future<Result<TokenEntity?>> call() {
    return _repository.readToken();
  }
}

import 'package:flutter_clean_core/core/base/domain/entities/token_entity.dart';
import 'package:flutter_clean_core/core/service/network/network_state/api_result.dart';

abstract class TokenRepository {
  Future<Result<TokenEntity?>> readToken();
  Future<Result<bool>> saveToken(TokenEntity tokenEntity);
  Future<Result<bool>> hasToken();
  Future<Result<bool>> updateToken(TokenEntity tokenEntity);
  Future<Result<bool>> removeToken();
}

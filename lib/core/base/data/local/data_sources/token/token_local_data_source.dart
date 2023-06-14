import 'package:flutter_clean_core/core/base/data/local/models/token/token_model.dart';
import 'package:flutter_clean_core/core/base/data/remote/models/base_response.dart';

abstract class TokenLocalDataSource {
  Future<BaseSingleResponse> saveToken(TokenModel? value);

  Future<BaseSingleResponse<TokenModel>> readToken();

  Future<BaseSingleResponse<bool>> removeToken();
}

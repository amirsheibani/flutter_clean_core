import 'package:flutter_clean_core/core/base/data/local/models/token/token_model.dart';
import 'package:flutter_clean_core/core/base/domain/entities/token_entity.dart';

extension MapperOnTokenModel on TokenModel {
  TokenEntity mapper() {
    return TokenEntity(tokenType: tokenType, expiresIn: expiresIn, accessToken: accessToken, refreshToken: refreshToken);
  }
}

extension MapperOnTokenqEntity on TokenEntity {
  TokenModel mapper() {
    return TokenModel(tokenType: tokenType, expiresIn: expiresIn, accessToken: accessToken, refreshToken: refreshToken);
  }
}

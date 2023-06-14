import 'package:flutter_clean_core/core/base/data/model/user_data_from_token_model.dart';
import 'package:flutter_clean_core/core/base/domain/entities/user_data_from_token_entity.dart';

extension MapperOnUserDataFromTokenEntity on UserDataFromTokenEntity {
  UserDataFromTokenModel? mapper() {
    return UserDataFromTokenModel(
      exp: exp,
      iat: iat,
      authTime: authTime,
      jti: jti,
      iss: iss,
      sub: sub,
      typ: typ,
      azp: azp,
      nonce: nonce,
      sessionState: sessionState,
      allowedorigins: allowedorigins,
      scope: scope,
      sid: sid,
      emailVerified: emailVerified,
      organizationId: organizationId,
      name: name,
      preferredUsername: preferredUsername,
      givenName: givenName,
      familyName: familyName,
      email: email,
    );
  }
}

extension MapperOnUserDataFromTokenModel on UserDataFromTokenModel {
  UserDataFromTokenEntity? mapper() {
    return UserDataFromTokenEntity(
      exp: exp,
      iat: iat,
      authTime: authTime,
      jti: jti,
      iss: iss,
      sub: sub,
      typ: typ,
      azp: azp,
      nonce: nonce,
      sessionState: sessionState,
      allowedorigins: allowedorigins,
      scope: scope,
      sid: sid,
      emailVerified: emailVerified,
      organizationId: organizationId,
      name: name,
      preferredUsername: preferredUsername,
      givenName: givenName,
      familyName: familyName,
      email: email,
    );
  }
}

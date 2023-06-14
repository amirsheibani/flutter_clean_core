class UserDataFromTokenEntity {
  UserDataFromTokenEntity({
    this.exp,
    this.iat,
    this.authTime,
    this.jti,
    this.iss,
    this.sub,
    this.typ,
    this.azp,
    this.nonce,
    this.sessionState,
    this.allowedorigins,
    this.scope,
    this.sid,
    this.emailVerified,
    this.organizationId,
    this.name,
    this.preferredUsername,
    this.givenName,
    this.familyName,
    this.email,
  });

  int? exp;
  int? iat;
  int? authTime;
  String? jti;
  String? iss;
  String? sub;
  String? typ;
  String? azp;
  String? nonce;
  String? sessionState;
  List<String>? allowedorigins;
  String? scope;
  String? sid;
  bool? emailVerified;
  int? organizationId;
  String? name;
  String? preferredUsername;
  String? givenName;
  String? familyName;
  String? email;
}

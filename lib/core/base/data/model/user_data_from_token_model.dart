class UserDataFromTokenModel {
  UserDataFromTokenModel({
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

  UserDataFromTokenModel.fromJson(dynamic json) {
    exp = json['exp'];
    iat = json['iat'];
    authTime = json['auth_time'];
    jti = json['jti'];
    iss = json['iss'];
    sub = json['sub'];
    typ = json['typ'];
    azp = json['azp'];
    nonce = json['nonce'];
    sessionState = json['session_state'];
    allowedorigins = json['allowed-origins'] != null ? json['allowed-origins'].cast<String>() : [];
    scope = json['scope'];
    sid = json['sid'];
    emailVerified = json['email_verified'];
    organizationId = json['organization_id'];
    name = json['name'];
    preferredUsername = json['preferred_username'];
    givenName = json['given_name'];
    familyName = json['family_name'];
    email = json['email'];
  }

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

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['exp'] = exp;
    map['iat'] = iat;
    map['auth_time'] = authTime;
    map['jti'] = jti;
    map['iss'] = iss;
    map['sub'] = sub;
    map['typ'] = typ;
    map['azp'] = azp;
    map['nonce'] = nonce;
    map['session_state'] = sessionState;
    map['allowed-origins'] = allowedorigins;
    map['scope'] = scope;
    map['sid'] = sid;
    map['email_verified'] = emailVerified;
    map['organization_id'] = organizationId;
    map['name'] = name;
    map['preferred_username'] = preferredUsername;
    map['given_name'] = givenName;
    map['family_name'] = familyName;
    map['email'] = email;
    return map;
  }
}

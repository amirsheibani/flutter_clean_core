abstract class Environment {
  String? baseUrl;
  String? apiVer;
  String? schema;
  String? port;
  String? prefixPath;

  String? url;
}

class Dev extends Environment {
  @override
  set baseUrl(String? _baseUrl) {
    super.baseUrl = _baseUrl;
  }

  @override
  set schema(String? _schema) {
    super.schema = _schema;
  }

  @override
  set apiVer(String? _apiVer) {
    super.apiVer = _apiVer;
  }

  @override
  set port(String? _port) {
    super.port = _port;
  }

  @override
  set prefixPath(String? _prefixPath) {
    super.prefixPath = _prefixPath;
  }

  @override
  String get baseUrl => super.baseUrl ?? 'api.example.com';
  @override
  String get schema => super.schema ?? 'http';
  @override
  String get apiVer => super.apiVer ?? 'v1';
  @override
  String get port => super.port ?? '';
  @override
  String get prefixPath => super.prefixPath ?? 'api';

  @override
  String get url {
    return '$schema://$baseUrl${port != '' ? ':$port' : ''}/$prefixPath/$apiVer';
  }
}

class Stage extends Environment {
  @override
  set baseUrl(String? _baseUrl) {
    super.baseUrl = _baseUrl;
  }

  @override
  set schema(String? _schema) {
    super.schema = _schema;
  }

  @override
  set apiVer(String? _apiVer) {
    super.apiVer = _apiVer;
  }

  @override
  set port(String? _port) {
    super.port = _port;
  }

  @override
  set prefixPath(String? _prefixPath) {
    super.prefixPath = _prefixPath;
  }

  @override
  String get baseUrl => super.baseUrl ?? 'api.developmentapollon.com';
  @override
  String get schema => super.schema ?? 'http';
  @override
  String get apiVer => super.apiVer ?? 'v1';
  @override
  String get port => super.port ?? '';
  @override
  String get prefixPath => super.prefixPath ?? 'api';
  @override
  String get url {
    return '$schema://$baseUrl${port != '' ? ':$port' : ''}/$prefixPath/$apiVer';
  }
}

class Production extends Environment {
  @override
  set baseUrl(String? _baseUrl) {
    super.baseUrl = _baseUrl;
  }

  @override
  set schema(String? _schema) {
    super.schema = _schema;
  }

  @override
  set apiVer(String? _apiVer) {
    super.apiVer = _apiVer;
  }

  @override
  set port(String? _port) {
    super.port = _port;
  }

  @override
  set prefixPath(String? _prefixPath) {
    super.prefixPath = _prefixPath;
  }

  @override
  String get baseUrl => super.baseUrl ?? 'api.developmentapollon.com';
  @override
  String get schema => super.schema ?? 'http';
  @override
  String get apiVer => super.apiVer ?? 'v1';
  @override
  String get port => super.port ?? '';
  @override
  String get prefixPath => super.prefixPath ?? 'api';
  @override
  String get url {
    return '$schema://$baseUrl${port != '' ? ':$port' : ''}/$prefixPath/$apiVer';
  }
}

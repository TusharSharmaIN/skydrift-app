class ServerException implements Exception {
  ServerException({this.code = 0, this.message = ''});

  final int code;
  final String message;

  @override
  String toString() => 'ServerException(code: $code, message: $message)';
}

class CacheException implements Exception {
  CacheException({this.message = ''});

  final String message;

  @override
  String toString() => 'CacheException($message)';
}

class NetworkException implements Exception {
  NetworkException({this.message = ''});

  final String message;

  @override
  String toString() => 'NetworkException($message)';
}

class AuthException implements Exception {
  AuthException({this.message = ''});

  final String message;

  @override
  String toString() => 'AuthException($message)';
}

class OtherException implements Exception {
  OtherException({this.message = ''});

  final String message;

  @override
  String toString() => 'OtherException($message)';
}

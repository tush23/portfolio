class ServerException implements Exception {
  final String message;
  ServerException(this.message);

  @override
  String toString() => 'ServerException: $message';
}

class CacheException implements Exception {
  final String message;
  CacheException(this.message);

  @override
  String toString() => 'CacheException: $message';
}

class NoInternetException implements Exception {
  final String message = 'No Internet Connection';

  @override
  String toString() => 'NoInternetException: $message';
}
class ModelParsingException implements Exception {
  final String message;


  ModelParsingException(this.message);

  @override
  String toString() => 'FROM-JSON: $message';
}

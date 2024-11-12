import 'package:dio/dio.dart';
import '../utils/logger_service.dart';
import '../storage/secure_storage_service.dart';

class ResponseInterceptor extends InterceptorsWrapper {
  final LoggerService _logger;
  final SecureStorageService _storageService;

  ResponseInterceptor(this._logger, this._storageService);

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    _handleResponse(response, handler);
    super.onResponse(response, handler);

  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    await _handleError(err, handler);
  }

  void _handleResponse(Response response, ResponseInterceptorHandler handler) {
    _logger.logResponseDetails(
      response.requestOptions.method,
      response.requestOptions.path,
      response.data,
      response.statusCode??0
    );

    switch (response.statusCode) {
      case 200:
      case 201:
      case 204:
      // Handle successful responses

        break;
      default:
        _logger.logErrorDetails(
          response.requestOptions.method,
          response.requestOptions.path,
          response.data,
          response.statusCode,
          response.statusMessage
        );
        break;
    }

    // handler.next(response);
  }

  Future<void> _handleError(DioError err, ErrorInterceptorHandler handler) async {
    _logger.logErrorDetails(
      err.requestOptions.method,
      err.requestOptions.path,
      err.response?.data,
      0,
      err.error.toString()
    );

    if (err.response?.statusCode == 401) {
      await _handleUnauthorized(err, handler);
    } else {
      handler.next(err);
    }
  }

  Future<void> _handleUnauthorized(DioError err, ErrorInterceptorHandler handler) async {
    String? newToken = await _storageService.getToken();
    if (newToken != null) {
      err.requestOptions.headers['Authorization'] = 'Bearer $newToken';
      try {
        final retryResponse = await Dio().fetch(err.requestOptions);
        handler.resolve(retryResponse);
      } catch (e) {
        handler.reject(err);
      }
    } else {
      handler.reject(err);
    }
  }
}

import 'package:dio/dio.dart';
import '../utils/logger_service.dart';
import '../storage/secure_storage_service.dart';

class RequestInterceptor extends InterceptorsWrapper {
  final LoggerService _logger;
  final SecureStorageService _storageService;

  RequestInterceptor(this._logger, this._storageService);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    String? token = await _storageService.getToken();
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    _logger.logRequestDetails(
      options.method,
      options.path,
      options.data,
      Response(requestOptions: options, statusCode: 0),
    );
    super.onRequest(options, handler);
  }
}

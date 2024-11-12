import 'package:dio/dio.dart';
import 'network_service.dart';
import '../utils/logger_service.dart';
import '../config.dart';
import 'request_interceptor.dart';
import 'response_interceptor.dart';
import '../storage/secure_storage_service.dart';

class DioNetworkService extends NetworkService {
  final Dio _dio;

  DioNetworkService() : _dio = Dio() {
    EnvironmentConfig envConfig = ConfigEnvironments.getCurrentEnvironment();

    _dio.options = BaseOptions(
      baseUrl: envConfig.api,
      headers: {
        'Content-Type': 'application/json',
      },
    );

    _dio.interceptors.addAll([
      RequestInterceptor(LoggerService(), SecureStorageService()),
      ResponseInterceptor(LoggerService(), SecureStorageService()),
    ]);
  }

  @override
  Future<Response> get(String endpoint, {Map<String, dynamic>? params}) {
    return _dio.get(endpoint, queryParameters: params);
  }

  @override
  Future<Response> post(String endpoint, {dynamic data}) {
    return _dio.post(endpoint, data: data);
  }
}

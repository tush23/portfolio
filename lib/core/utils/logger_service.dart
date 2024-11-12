import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart' as di;

class LoggerService {
  LoggerService._privateConstructor();

  static final LoggerService _instance = LoggerService._privateConstructor();
  factory LoggerService() => _instance;

  void logRequestDetails(String method, String endpoint, dynamic data, di.Response response) {
    const String greenColor = "\x1B[32m";  // Green color for requests
    debugPrint('$greenColor[REQUEST] Method: $method, Endpoint: $endpoint, Data: $data, InitialStatusCode: ${response.statusCode}');
  }

  void logResponseDetails(String method, String endpoint, dynamic data, int statusCode) {
    const String blueColor = "\x1B[34m";  // Blue color for responses
    debugPrint('$blueColor[RESPONSE] Method: $method, Endpoint: $endpoint, Data: $data, StatusCode: $statusCode');
  }

  void logErrorDetails(String method, String endpoint, dynamic data, int? statusCode, String? errorMessage) {
    const String redColor = "\x1B[31m";  // Red color for errors
    debugPrint('$redColor[ERROR] Method: $method, Endpoint: $endpoint, Error: $errorMessage, StatusCode: $statusCode, Data: $data');
  }
}

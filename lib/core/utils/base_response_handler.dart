import 'package:dio/dio.dart';
import '../error/exceptions.dart';

enum ResponseState { init, loading, success, error }

class ResponseHandler<T> {
  final String? error;
  final Map<String, dynamic>? response;
  final T? data;
  final ResponseState responseState;

  ResponseHandler.loading({
    this.error,
    this.response,
    this.data,
    this.responseState = ResponseState.loading,
  });

  ResponseHandler.init({
    this.error,
    this.response,
    this.data,
    this.responseState = ResponseState.init,
  });

  ResponseHandler.error({
    this.error = "true",
    this.response,
    this.data,
    this.responseState = ResponseState.error,
  });

  ResponseHandler.success({
    this.error,
    required this.data,
    this.response,
    this.responseState = ResponseState.success,
  });
  factory ResponseHandler.fromResponse(
      Response response, T Function(Map<String, dynamic> data) fromJson) {
    try {
      if (response.data != null) {
        return ResponseHandler<T>.success(
          responseState: ResponseState.success,
          data: fromJson(response.data),
          response: response.data,
        );
      } else {
        return ResponseHandler<T>.error(
          responseState: ResponseState.error,
          response: response.data,
          error: "Something went wrong",
        );
      }
    } catch (e) {
      return ResponseHandler<T>.error(
        responseState: ResponseState.error,
        response: response.data,
        error: e.toString(),
      );
      throw ModelParsingException('Model Parsing Exception');

    }
  }
}


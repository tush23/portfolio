import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import '../utils/base_response_handler.dart';

mixin StateHandlingMixin on GetxController {
  final RxMap<String, ResponseHandler> _states = <String, ResponseHandler>{}.obs;

  ResponseHandler getState(String key) => _states[key] ?? ResponseHandler.init();

  void setLoading(String key) {
    _states[key] = ResponseHandler.loading();
    update();
  }

  void setSuccess<T>(String key, T data) {
    _states[key] = ResponseHandler<T>.success(data: data);
    update();
  }

  void setError(String key, String errorMessage) {
    _states[key] = ResponseHandler.error(error: errorMessage);
    update();
  }

  Future<void> handleState<T>(String key, Future<dynamic> Function() operation) async {
    try {
      setLoading(key);
      final response = await operation();
      if (response.data != null) {
          setSuccess<T>(key, response.data as T);

      } else {
        setError(key, response['error'] ?? "Unknown error");
      }
    } catch (e, stacktrace) {
      setError(key, e.toString());
      debugPrint('Error in operation');
    }
  }
}

class GenericController extends GetxController with StateHandlingMixin {
  Future<void> call<T>(Future<ResponseHandler<T>> future) async {
    String key = T.hashCode.toString();
    await handleState<T>(key, () async => await future);
  }
}

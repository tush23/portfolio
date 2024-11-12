import 'package:get/get.dart';
import '../core/network/dio_network_service.dart';
import '../core/storage/secure_storage_service.dart';
import '../core/utils/logger_service.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DioNetworkService>(() => DioNetworkService());
    Get.lazyPut<SecureStorageService>(() => SecureStorageService());
    Get.lazyPut<LoggerService>(() => LoggerService());
  }
}

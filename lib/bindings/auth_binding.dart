import 'package:get/get.dart';
import '../features/auth/domain/repositories/auth_repository.dart';
import '../features/auth/presentation/controllers/auth_controller.dart';
import '../features/auth/data/datasource/auth_remote_data_source.dart';
import '../features/auth/data/repositories/auth_repository_impl.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthRemoteDataSource(Get.find()));
    Get.lazyPut<AuthRepository>(() => AuthRepositoryImpl(Get.find()));
    Get.lazyPut(() => AuthController(Get.find()));
  }
}

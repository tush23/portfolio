import 'package:get/get.dart';
import '../features/landing/domain/repositories/landing_repository.dart';
import '../features/landing/presentation/controllers/landing_controller.dart';
import '../features/landing/data/datasource/landing_remote_data_source.dart';
import '../features/landing/data/repositories/landing_repository_impl.dart';

class LandingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LandingRemoteDataSource(Get.find()));
    Get.lazyPut<LandingRepository>(() => LandingRepositoryImpl(Get.find()));
    Get.lazyPut(() => LandingController(Get.find()));
  }
}

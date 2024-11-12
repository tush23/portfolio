import 'package:get/get.dart';
import '../../data/models/auth_model.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../../../core/utils/base_response_handler.dart';
import '../../../../core/controllers/base_controller.dart';

class AuthController extends GenericController {
  final AuthRepository repository;

  AuthController(this.repository);

  var data = ResponseHandler<AuthModel>.init().obs;

  void fetchData() async {
    await call<AuthModel>(repository.fetchData());
  }
}

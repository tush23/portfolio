import '../../../../core/utils/base_response_handler.dart';
import '../../data/models/auth_model.dart';
abstract class AuthRepository {
  Future<ResponseHandler<AuthModel>> fetchData();
}

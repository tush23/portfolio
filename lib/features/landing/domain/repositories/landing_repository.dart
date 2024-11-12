import '../../../../core/utils/base_response_handler.dart';
import '../../data/models/landing_model.dart';
abstract class LandingRepository {
  Future<ResponseHandler<LandingModel>> fetchData();
}

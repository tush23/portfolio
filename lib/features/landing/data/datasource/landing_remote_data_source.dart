import 'package:dio/dio.dart';
import '../../../../core/network/dio_network_service.dart';
import '../models/landing_model.dart';
import '../../../../core/utils/base_response_handler.dart';

sealed class LandingEndpoints{
  static const String EMPLOYEES = '/employees';

}
class LandingRemoteDataSource {
  final DioNetworkService _dioNetworkService;

  LandingRemoteDataSource(this._dioNetworkService);

  Future<ResponseHandler<LandingModel>> fetchData() async {
    try {
      final response = await _dioNetworkService.get(LandingEndpoints.EMPLOYEES);
      return ResponseHandler.fromResponse(response,LandingModel.fromJson);
    } catch (e) {
      throw Exception(e);
    }
  }
}

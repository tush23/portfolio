import 'package:dio/dio.dart';
import '../../../../core/network/dio_network_service.dart';
import '../models/auth_model.dart';
import '../../../../core/utils/base_response_handler.dart';

sealed class AuthEndpoints{
  static const String EMPLOYEES = '/employees';

}
class AuthRemoteDataSource {
  final DioNetworkService _dioNetworkService;

  AuthRemoteDataSource(this._dioNetworkService);

  Future<ResponseHandler<AuthModel>> fetchData() async {
    try {
      final response = await _dioNetworkService.get(AuthEndpoints.EMPLOYEES);
      return ResponseHandler.fromResponse(response,AuthModel.fromJson);
    } catch (e) {
      throw Exception(e);
    }
  }
}

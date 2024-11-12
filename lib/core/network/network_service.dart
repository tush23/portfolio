abstract class NetworkService {
  Future<dynamic> get(String endpoint, {Map<String, dynamic>? params});
  Future<dynamic> post(String endpoint, {dynamic data});
}

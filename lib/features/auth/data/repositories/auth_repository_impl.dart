import '../../domain/repositories/auth_repository.dart';
import '../models/auth_model.dart';
import '../datasource/auth_remote_data_source.dart';
import '../../../../core/utils/base_response_handler.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<ResponseHandler<AuthModel>> fetchData() async {
    return await remoteDataSource.fetchData();
  }
}

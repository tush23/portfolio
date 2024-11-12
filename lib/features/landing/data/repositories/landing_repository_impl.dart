import '../../domain/repositories/landing_repository.dart';
import '../models/landing_model.dart';
import '../datasource/landing_remote_data_source.dart';
import '../../../../core/utils/base_response_handler.dart';

class LandingRepositoryImpl implements LandingRepository {
  final LandingRemoteDataSource remoteDataSource;

  LandingRepositoryImpl(this.remoteDataSource);

  @override
  Future<ResponseHandler<LandingModel>> fetchData() async {
    return await remoteDataSource.fetchData();
  }
}

import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly/features/home/data/repository/home_repository_implementation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );

  getIt.registerSingleton<HomeRepositoryImplementation>(
    HomeRepositoryImplementation(
      homeRemoteDataSource: HomeRemoteDataSource(
        getIt.get<ApiService>(),
      ),
      homeLocalDataSource: HomeLocalDataSource(),
    ),
  );
}

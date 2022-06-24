import 'package:expert_robot/core/forecast/data/database/forecast_remote_database.dart';
import 'package:expert_robot/core/forecast/domain/repositories/forecast_repo.dart';
import 'package:expert_robot/core/forecast/domain/usecases/search.dart';
import 'package:expert_robot/features/home/presentation/bloc/home_bloc.dart';
import 'package:get_it/get_it.dart';

import 'data/repositories/forecast_repo_impl.dart';

/// Add [Forecast] injection
void initForecast() {
  // Init GetIT
  final sl = GetIt.instance;
  sl
    // Register usecases
    ..registerLazySingleton(() => GetForecastBySearch(sl()))
    // Register repository
    ..registerLazySingleton<ForecastRepository>(
      () => ForecastRepositoryImpl(networkInfo: sl(), remoteDatabase: sl()),
    )
    // Register database
    ..registerLazySingleton<ForecastRemoteDatabase>(
        () => ForecastRemoteDatabaseImpl(sl()));
}

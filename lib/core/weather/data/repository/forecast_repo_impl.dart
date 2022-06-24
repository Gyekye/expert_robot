import 'package:dartz/dartz.dart';
import 'package:expert_robot/core/error/exception.dart';
import 'package:expert_robot/core/error/failure.dart';
import 'package:expert_robot/core/platform/network.dart';
import 'package:expert_robot/core/weather/domain/entities/forecast.dart';
import 'package:expert_robot/core/weather/domain/repositories/forecast_repo.dart';

import '../database/forecast_remote_database.dart';

/// Concrete Implementation of the [ForecastRepository] class

class ForecastRepositoryImpl implements ForecastRepository {
  // Network Info
  final NetworkInfo networkInfo;

  // Database
  final ForecastRemoteDatabase remoteDatabase;

  // Constructor
  ForecastRepositoryImpl(
      {required this.networkInfo, required this.remoteDatabase});

  @override
  Future<Either<Failure, Forecast>> getForecastBySearch(String query) async {
    // Check for internet connectivity
    // try to return data from [ForecastRemoteDatabase], else catch exception and return [Failure]
    try {
      await networkInfo.hasInternet();
      final result = await remoteDatabase.getForecastBySearch(query);
      return Right(result);
    } on DeviceException catch (error) {
      return Left(Failure(error.message));
    }
  }

}

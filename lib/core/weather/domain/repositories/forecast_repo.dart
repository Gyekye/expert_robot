import 'package:dartz/dartz.dart';
import '../../../error/failure.dart';
import '../entities/forecast.dart';

/// Forecast repository contracts
/// Defines contracts for the usecase and repository implemetation
/// Each contract returns either a [Forecast] or a [Failure]
abstract class ForecastRepository {
  // Get forecast by search e.g city or state
  Future<Either<Failure, Forecast>> getForecast(String query);
}

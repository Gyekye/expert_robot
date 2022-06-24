import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../../../error/failure.dart';
import '../../../usecase/base_usecase.dart';
import '../entities/forecast.dart';
import '../repositories/forecast_repo.dart';

/// Usecase for getting a forecast by search
/// Returns a contract from the [ForecastRepository]
/// Extends [Usecase] from base_usecase.dart

class GetForecastBySearch
    implements UseCase<Forecast, GetForecastBySearchParams> {
  // Contract Repo
  final ForecastRepository repository;

  // Constructor
  const GetForecastBySearch(this.repository);

  @override
  Future<Either<Failure, Forecast>> call(GetForecastBySearchParams params) {
    return repository.getForecastBySearch(params.query);
  }
}

/// Dependency class for [GetForecastBySearch]

class GetForecastBySearchParams extends Equatable {
  // Params for the call method
  final String query;

  // Constructor
  const GetForecastBySearchParams(this.query);

  @override
  List<Object> get props => [query];
}

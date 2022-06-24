import 'package:flutter/foundation.dart';

import '../../../../core/forecast/domain/entities/forecast.dart';
import '../../../../core/forecast/domain/usecases/search.dart';

/// Bloc logic for home

class HomeBloc {
  // Usecase dependencies
  final GetForecastBySearch getForecastBySearch;

  // Constructor
  HomeBloc({required this.getForecastBySearch});

  // Future logic methods

  Future<Forecast> retrieveForecast(String query) async {
    final results = await getForecastBySearch(GetForecastBySearchParams(query));
    if (kDebugMode) {
      print(results);
    }
    return results.fold(
        (failure) => Forecast.initial(), (forecast) => forecast);
  }
}

import 'dart:convert';

import 'package:expert_robot/core/data/api_keys.dart';
import 'package:expert_robot/core/error/exception.dart';
import 'package:expert_robot/core/error/failure.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../../domain/entities/forecast.dart';

/// Remote Database for Forecast

abstract class ForecastRemoteDatabase {
  /// Get forecast by search
  Future<Forecast> getForecastBySearch(String query);
}

/// Concrete implementation of [ForecastRemoteDatabase[
class ForecastRemoteDatabaseImpl implements ForecastRemoteDatabase {
  // http client
  final http.Client client;

  // Constructor
  ForecastRemoteDatabaseImpl(this.client);

  @override
  Future<Forecast> getForecastBySearch(String query) async {
    final response = await client.get(
      // Url
      Uri.parse('${ApiKeys.url}$query&units=metric'),
      headers: {
        'X-RapidAPI-Key': ApiKeys.openWeather,
        'X-RapidAPI-Host':ApiKeys.host,
      }
    );
    // Is response Ok ?
    if (response.statusCode == 200) {
      final results = Forecast.fromJson(jsonDecode(response.body));
      if (kDebugMode) {
        print(results);
      }
      return results;
    } else {
      throw  const DeviceException('Could not retrieve weather forecast');
    }
  }
}

import 'core/forecast/forecast_injection.dart';
import 'core/platform/network.dart';
import 'features/home/home_injection.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

// Service Locator instance
final sl = GetIt.instance;

/// Initialize all injections
void init() {
  // Core injections
  initCore();
  // Features injections
  initFeatures();
  // External injections
  initExternal();
}

/// Add core injection
void initCore() {
  // [Forecast]
  initForecast();
}

/// Add  features injection
void initFeatures() {
  // [HomeBloc]
  initHome();
  sl // Network Package
      .registerLazySingleton<NetworkInfo>(NetworkInfoImpl.new);
}

/// Add external packages injection
void initExternal() {
  // Http package
  sl.registerLazySingleton(http.Client.new);
}

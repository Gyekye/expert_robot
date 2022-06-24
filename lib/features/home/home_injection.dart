import 'package:expert_robot/features/home/presentation/bloc/home_bloc.dart';
import 'package:get_it/get_it.dart';

/// Register [HomeBloc]
void initHome(){
  final sl = GetIt.instance;

  // Register bloc
  sl.registerFactory(() => HomeBloc(getForecastBySearch: sl()));
}
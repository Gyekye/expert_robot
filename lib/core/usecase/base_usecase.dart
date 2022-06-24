// Blue print for all usecases
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../error/failure.dart';

abstract class Usecase<Type, Params>{
  Future<Either<Failure, Type>> call(Params params);
}


// Params blue print for usecase without parameters
class NoParams extends Equatable{
  @override
  List<Object?> get props => [];
}
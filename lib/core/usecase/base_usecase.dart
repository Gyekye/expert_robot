// Blue print for all usecases
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../error/failure.dart';

/// Blue print for usecase
abstract class UseCase<Type, Params> {
  /// Forward usecase classes to repositories
  Future<Either<Failure, Type>> call(Params params);
}

/// Used when usecase doesn't take any parameters
class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}

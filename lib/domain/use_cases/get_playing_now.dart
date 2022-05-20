import 'package:dartz/dartz.dart';
import 'package:movie_app/domain/entities/app_error.dart';
import 'package:movie_app/domain/entities/movie_entity.dart';
import 'package:movie_app/domain/repositories/movie_repository.dart';
import 'package:movie_app/domain/use_cases/usecases.dart';

import '../entities/non_params.dart';

class GetPlayingNow extends UseCase<List<MovieEntity>?, NoParams> {
  final MovieRepository repository;
  GetPlayingNow(this.repository);

  Future<Either<AppError, List<MovieEntity>?>?> call(NoParams noParams) async {
    return await repository.getPlayingNow();
  }
}

// Caveat
// Knowledge Transferable
// Code Uniformity in BigTeam

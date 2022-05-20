import 'package:dartz/dartz.dart';
import 'package:movie_app/domain/entities/movie_entity.dart';

import '../entities/app_error.dart';

abstract class MovieRepository {
  Future<Either<AppError, List<MovieEntity>>?> getTrending();
  Future<List<MovieEntity>?> getPlayingNow();
}

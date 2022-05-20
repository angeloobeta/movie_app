import 'package:dartz/dartz.dart';
import 'package:movie_app/domain/entities/app_error.dart';
import 'package:movie_app/domain/entities/movie_entity.dart';
import 'package:movie_app/domain/repositories/movie_repository.dart';

class GetTrending {
  final MovieRepository repository;
  GetTrending(this.repository);

  Future<Either<AppError, List<MovieEntity>?>> call() async {
    return await repository.getTrending();
  }
}

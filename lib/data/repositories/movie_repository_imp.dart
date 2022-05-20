import 'package:movie_app/data/data_sources/movie_remote_data_source.dart';
import 'package:movie_app/domain/repositories/movie_repository.dart';

import '../models/movie_model.dart';

class MovieRepositoryImp extends MovieRepository {
  final MovieRemoteDataSource remoteDataSource;

  MovieRepositoryImp(this.remoteDataSource);

  @override
  Future<List<MovieModel>?> getTrending() async {
    try {
      final movie = await remoteDataSource.getTrending();
      return movie;
    } on Exception {
      return null;
    }
  }

  @override
  Future<List<MovieModel>?> getPlayingNow() async {
    try {
      final movie = await remoteDataSource.getPlayingNow();
      return movie;
    } on Exception {
      return null;
    }
  }
}

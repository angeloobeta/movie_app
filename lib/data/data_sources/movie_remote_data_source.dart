import 'package:movie_app/data/models/movie_model.dart';
import 'package:movie_app/data/models/movie_result_model.dart';

import '../core/api_client.dart';

abstract class MovieRemoteDataSource {
  Future<List<MovieModel>?> getTrending();
  Future<List<MovieModel>?> getPopular();
  Future<List<MovieModel>?> getPlayingNow();
  Future<List<MovieModel>?> getComingSoon();
}

class MovieRemoteDataSourceImpl extends MovieRemoteDataSource {
  final ApiClient _client;
  MovieRemoteDataSourceImpl(this._client);

  @override
  Future<List<MovieModel>?> getTrending() async {
    final response = await _client.get('trending/movies/day');
    final movies = MovieResultModel.fromJson(response).movies;
    print(movies);
    return movies;
  }

  @override
  Future<List<MovieModel>?> getPopular() async {
    final response = await _client.get('movie/popular');
    final movies = MovieResultModel.fromJson(response).movies;
    print(movies);
    return movies;
  }

  @override
  Future<List<MovieModel>?> getComingSoon() async {
    final response = await _client.get('movie/upcoming');
    final movies = MovieResultModel.fromJson(response).movies;
    print(movies);
    return movies;
  }

  @override
  Future<List<MovieModel>?> getPlayingNow() async {
    final response = await _client.get('movie/now_playing');
    final movies = MovieResultModel.fromJson(response).movies;
    print(movies);
    return movies;
  }
}
// https://api.themoviedb.org/3/trending/movie/day?api_key=b015ad15dc74ec63b9e34ee4cbecad8d

import 'dart:convert';

import 'package:http/http.dart';
import 'package:movie_app/data/core/api_constants.dart';
import 'package:movie_app/data/models/movie_model.dart';
import 'package:movie_app/data/models/movie_result_model.dart';

abstract class MovieRemoteDataSource {
  Future<List<MovieModel>?> getTrending();
  Future<List<MovieModel>?> getPopular();
}

class MovieRemoteDataSourceImpl extends MovieRemoteDataSource {
  final Client _client;
  MovieRemoteDataSourceImpl(this._client);

  @override
  Future<List<MovieModel>?> getTrending() async {
    final response = await _client.get(
        Uri.parse(
            '${Api_constant.BASE_URL}trending/movie/day?api_key=${Api_constant.API_KEY}'),
        headers: {'Content-Type': 'application/json'});

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      final movies = MovieResultModel.fromJson(responseBody).movies;
      print(movies);
      return movies;
    } else {
      throw Exception(response.reasonPhrase);
    }
  }

  @override
  Future<List<MovieModel>?> getPopular() async {
    final response = await _client.get(
        Uri.parse(
            '${Api_constant.BASE_URL}movie/popular/day?api_key=${Api_constant.API_KEY}'),
        headers: {'Content-Type': 'application/json'});

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      final movies = MovieResultModel.fromJson(responseBody).movies;
      print(movies);
      return movies;
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
// https://api.themoviedb.org/3/trending/movie/day?api_key=b015ad15dc74ec63b9e34ee4cbecad8d

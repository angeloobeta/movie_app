import 'dart:convert';

import 'movie_model.dart';

MovieResultModel movieResultModelFromJson(String str) =>
    MovieResultModel.fromJson(json.decode(str));
String movieResultModelToJson(MovieResultModel data) =>
    json.encode(data.toJson());

class MovieResultModel {
  List<MovieModel>? movies;

  MovieResultModel({
    this.movies,
  });
  MovieResultModel.fromJson(dynamic json) {
    if (json['results'] != null) {
      movies = [];
      json['results'].forEach((v) {
        movies?.add(MovieModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (movies != null) {
      map['results'] = movies?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

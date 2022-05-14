import 'dart:convert';

import 'movie_model.dart';

MovieResultModel movieResultModelFromJson(String str) =>
    MovieResultModel.fromJson(json.decode(str));
String movieResultModelToJson(MovieResultModel data) =>
    json.encode(data.toJson());

class MovieResultModel {
  List<MovieModel>? results;

  MovieResultModel({
    this.results,
  });
  MovieResultModel.fromJson(dynamic json) {
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(MovieModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (results != null) {
      map['results'] = results?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

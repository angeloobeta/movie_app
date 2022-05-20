import 'dart:convert';

import 'package:movie_app/domain/entities/movie_entity.dart';

MovieModel resultsFromJson(String str) => MovieModel.fromJson(json.decode(str));
String resultsToJson(MovieModel data) => json.encode(data.toJson());

class MovieModel extends MovieEntity {
  MovieModel({
    this.overview,
    this.releaseDate,
    required this.id,
    required this.title,
    this.adult,
    this.backdropPath,
    this.genreIds,
    this.originalLanguage,
    this.originalTitle,
    this.posterPath,
    this.voteCount,
    this.video,
    this.voteAverage,
    this.popularity,
    this.mediaType,
  }) : super(
          id: id,
          posterPath: posterPath,
          backDropPath: backdropPath,
          title: title,
          releaseDate: releaseDate,
          voteAverage: voteAverage,
          genreIds: genreIds,
        );

  factory MovieModel.fromJson(dynamic json) {
    return MovieModel(
      overview: json['overview'],
      releaseDate: json['release_date'],
      id: json['id'],
      title: json['title']?.toString() ?? "",
      adult: json['adult'],
      backdropPath: json['backdrop_path'],
      genreIds: json['genre_ids'] != null ? json['genre_ids'].cast<int>() : [],
      originalLanguage: json['original_language'],
      originalTitle: json['original_title'],
      posterPath: json['poster_path'],
      voteCount: json['vote_count'],
      video: json['video'],
      voteAverage: json['vote_average']?.toDouble() ?? 0.0,
      popularity: json['popularity']?.toDouble() ?? 0.0,
      mediaType: json['media_type'],
    );
  }
  final String? overview;
  final String? releaseDate;
  final int id;
  final String title;
  final bool? adult;
  final String? backdropPath;
  final List<int>? genreIds;
  final String? originalLanguage;
  final String? originalTitle;
  final String? posterPath;
  final int? voteCount;
  final bool? video;
  final double? voteAverage;
  final double? popularity;
  final String? mediaType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['overview'] = overview;
    map['release_date'] = releaseDate;
    map['id'] = id;
    map['title'] = title;
    map['adult'] = adult;
    map['backdrop_path'] = backdropPath;
    map['genre_ids'] = genreIds;
    map['original_language'] = originalLanguage;
    map['original_title'] = originalTitle;
    map['poster_path'] = posterPath;
    map['vote_count'] = voteCount;
    map['video'] = video;
    map['vote_average'] = voteAverage;
    map['popularity'] = popularity;
    map['media_type'] = mediaType;
    return map;
  }
}

import 'dart:convert';

MovieModel resultsFromJson(String str) => MovieModel.fromJson(json.decode(str));
String resultsToJson(MovieModel data) => json.encode(data.toJson());

class MovieModel {
  MovieModel({
    this.overview,
    this.releaseDate,
    this.id,
    this.title,
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
  });

  MovieModel.fromJson(dynamic json) {
    overview = json['overview'];
    releaseDate = json['release_date'];
    id = json['id'];
    title = json['title'];
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    genreIds = json['genre_ids'] != null ? json['genre_ids'].cast<int>() : [];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    posterPath = json['poster_path'];
    voteCount = json['vote_count'];
    video = json['video'];
    voteAverage = json['vote_average'];
    popularity = json['popularity'];
    mediaType = json['media_type'];
  }
  String? overview;
  String? releaseDate;
  int? id;
  String? title;
  bool? adult;
  String? backdropPath;
  List<int>? genreIds;
  String? originalLanguage;
  String? originalTitle;
  String? posterPath;
  int? voteCount;
  bool? video;
  double? voteAverage;
  double? popularity;
  String? mediaType;

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

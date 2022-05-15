import 'package:equatable/equatable.dart';

class MovieEntity extends Equatable {
  final int? id;
  final String? posterPath;
  final String? backDropPath;
  final String? title;
  final String? releaseDate;
  final num? voteAverage;
  final String? overView;

  MovieEntity({
    required this.id,
    required this.posterPath,
    required this.backDropPath,
    required this.title,
    required this.releaseDate,
    required this.voteAverage,
    this.overView,
    List<int>? genreIds,
  }) : assert(id != null, "Movie Id can't be null");

  @override
  List<Object> get props => [id!, title!];

  @override
  bool get stringify => true;
}

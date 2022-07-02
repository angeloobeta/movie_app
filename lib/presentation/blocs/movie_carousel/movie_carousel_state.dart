part of 'movie_carousel_bloc.dart';

abstract class MovieCarouselState extends Equatable {
  const MovieCarouselState();
}

// To be emitted when the blocs first initialises
class MovieCarouselInitial extends MovieCarouselState {
  @override
  List<Object> get props => [];
}

// To be emitted if there is an error throw from the API
class MovieCarouselError extends MovieCarouselState {
  @override
  List<Object?> get props => [];
}

// To be emitted with list of trending movies and default index
class MovieCarouselLoaded extends MovieCarouselState {
  final List<MovieEntity>? movies;
  final int defaultIndex;

  const MovieCarouselLoaded({required this.movies, this.defaultIndex = 0})
      : assert(defaultIndex >= 0, "Default Index can't be less than zero");

  @override
  List<Object?> get props => [movies, defaultIndex];
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_app/domain/entities/movie_entity.dart';
import 'package:movie_app/domain/use_cases/get_trending.dart';

import '../../../domain/entities/non_params.dart';

part 'movie_carousel_event.dart';
part 'movie_carousel_state.dart';

class MovieCarouselBloc extends Bloc<MovieCarouselEvent, MovieCarouselState> {
  final GetTrending getTrending;

  MovieCarouselBloc({required this.getTrending})
      : super(MovieCarouselInitial());

  Stream<MovieCarouselState?> mapEventToState(MovieCarouselEvent event) async* {
    // on<MovieCarouselEvent>((event, emit) {});
    if (event is CarouselLoadEvent) {
      final movieEither = await getTrending(NoParams());
      yield movieEither?.fold((l) => MovieCarouselError(), (movies) {
        return MovieCarouselLoaded(
            movies: movies, defaultIndex: event.defaultIndex);
      });
    }
  }
}

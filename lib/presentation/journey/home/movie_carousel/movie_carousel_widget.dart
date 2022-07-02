import 'package:flutter/material.dart';
import 'package:movie_app/domain/entities/movie_entity.dart';

import '../../../widget/movie_app_bar.dart';

class MovieCarouselWidget extends StatelessWidget {
  final List<MovieEntity>? movies;
  final int defaultIndex;

  const MovieCarouselWidget(
      {Key? key, required this.movies, required this.defaultIndex})
      : assert(defaultIndex >= 0, "The default value can't be less than Zero"),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MovieAppBar(),
        MoviePageView(movies: movies, intialPage: defaultIndex)
      ],
    );
  }
}

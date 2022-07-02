import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/dependency_injection/get_it.dart';
import 'package:movie_app/presentation/blocs/movie_carousel/movie_carousel_bloc.dart';

import 'movie_carousel/movie_carousel_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late MovieCarouselBloc movieCarouselBloc;

  @override
  void initState() {
    super.initState();
    // When homeScreen is initialised dispatch the only event for movieCarousel block
    movieCarouselBloc = getItInstance<MovieCarouselBloc>();
    MovieCarouselBloc.add(CarouselLoadEvent());
  }

  @override
  void dispose() {
    super.dispose();
    movieCarouselBloc?.close();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MovieCarouselBloc>(
        create: (context) => movieCarouselBloc,
        child: Scaffold(
          body: BlocBuilder<MovieCarouselBloc, MovieCarouselState>(
            bloc: movieCarouselBloc,
            builder: (context, state) {
              if (state is MovieCarouselLoaded) {
                return Stack(
                  // This allows the stack to take all the available space
                  fit: StackFit.expand,
                  // The top part is 60% of the fractional screen while the bottom is 40% fractional of the screen
                  children: [
                    FractionallySizedBox(
                      alignment: Alignment.topCenter,
                      heightFactor: 0.6,
                      child: MovieCarouselWidget(
                          movies: state.movies,
                          defaultIndex: state.defaultIndex),
                    ),
                    FractionallySizedBox(
                      alignment: Alignment.topCenter,
                      heightFactor: 0.4,
                      child: Placeholder(
                        color: Colors.white,
                      ),
                    ),
                  ],
                );
              }
              return SizedBox.shrink();
            },
          ),
        ));
  }
}

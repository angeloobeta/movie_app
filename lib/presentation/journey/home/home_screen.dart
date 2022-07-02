import 'package:flutter/cupertino.dart';
import 'package:movie_app/dependency_injection/get_it.dart';
import 'package:movie_app/presentation/blocs/movie_carousel/movie_carousel_bloc.dart';

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
  Widget build(BuildContext context) {
    return Container();
  }
}

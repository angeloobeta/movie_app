import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/domain/entities/movie_entity.dart';
import 'package:movie_app/presentation/journey/home/movie_carousel/movie_card_widget.dart';

import '../../../../common/constants/size_constants.dart';

class MoviePageView extends StatefulWidget {
  final List<MovieEntity>? movies;
  final int initialPage;

  const MoviePageView(
      {Key? key, required this.movies, required this.initialPage})
      : assert(
            initialPage >= 0, "Initial Page must must be greater thatn Zero"),
        super(key: key);

  @override
  State<MoviePageView> createState() => _MoviePageViewState();
}

class _MoviePageViewState extends State<MoviePageView> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
        initialPage: widget.initialPage,
        keepPage: false,
        viewportFraction: 0.7);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenUtil() => ScreenUtil().screenHeight;
    return Container(
      margin: EdgeInsets.symmetric(vertical: Sizes.dimen_10.h),
      height: screenUtil() * 0.35,
      child: PageView.builder(
        itemBuilder: (context, index) {
          final MovieEntity movie = widget.movies![index];
          return MovieCardWidget(
              movieId: movie.id, postalPath: movie.posterPath);
        },
        pageSnapping: true,
        itemCount: widget.movies?.length ?? 0,
        onPageChanged: (index) {},
      ),
    );
  }
}

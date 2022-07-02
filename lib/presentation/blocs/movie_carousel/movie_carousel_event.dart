part of 'movie_carousel_bloc.dart';

abstract class MovieCarouselEvent extends Equatable {
  const MovieCarouselEvent();
}

// event will be dispatched when the use comes to the screen
class CarouselLoadEvent extends MovieCarouselEvent {
  // default will give us the flexibility to chooses which movie will be at the centre
  // of our carousel at the start
  final int defaultIndex;

  const CarouselLoadEvent({this.defaultIndex = 0})
      : assert(defaultIndex >= 0, 'Default value can not be less than zero');

  @override
  List<Object?> get props => [defaultIndex];
}

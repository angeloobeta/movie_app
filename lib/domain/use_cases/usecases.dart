import 'package:dartz/dartz.dart';
import 'package:movie_app/domain/entities/app_error.dart';

abstract class UseCase<Type, Params> {
  // UseCase uses two generics
//   Type What does the UserCase return
//  Type What is required to make API calls i.e input()
Future<Either<AppError, Type>> call async (Params params) {

}
}


// Present ==> GetTrending, GetPlaying, GetPopular, GetComingSoon
// Future ==> GetMovieDetail, GetCast, SearchMovie, etc
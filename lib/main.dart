import 'package:dartz/dartz.dart';
import 'package:http/http.dart';
import 'package:movie_app/data/core/api_client.dart';
import 'package:movie_app/data/data_sources/movie_remote_data_source.dart';
import 'package:movie_app/data/repositories/movie_repository_imp.dart';
import 'package:movie_app/domain/entities/app_error.dart';
import 'package:movie_app/domain/entities/movie_entity.dart';
import 'package:movie_app/domain/repositories/movie_repository.dart';
import 'package:movie_app/domain/use_cases/get_trending.dart';

Future<void> main() async {
  ApiClient apiClient = ApiClient(Client());
  MovieRemoteDataSource dataSource = MovieRemoteDataSourceImpl(apiClient);
  MovieRepository movieRepository = MovieRepositoryImp(dataSource);
  movieRepository.getPlayingNow();
  movieRepository.getTrending();
  dataSource.getTrending();
  dataSource.getComingSoon();
  dataSource.getPlayingNow();
  GetTrending getTrending = GetTrending(movieRepository);
  final Either<AppError, List<MovieEntity>?>? eitherResponse =
      await getTrending();
  eitherResponse?.fold((l) {
    print("error");
    print(l);
  }, (r) {
    print("List of movies");
    print(r);
  });
  // runApp(MaterialApp(
  //   home: HomeScreen(),
  // ));
  print("Whatever you want to do is okay");
}

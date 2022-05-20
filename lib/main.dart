import 'dart:async';

import 'package:dartz/dartz.dart';
// import 'package:http/http.dart';
import 'package:movie_app/domain/entities/app_error.dart';
import 'package:movie_app/domain/entities/movie_entity.dart';
import 'package:movie_app/domain/use_cases/get_trending.dart';

import 'dependency_injection/get_it.dart' as getIt;
// import 'data/core/api_client.dart';
// import 'data/data_sources/movie_remote_data_source.dart';
// import 'data/repositories/movie_repository_imp.dart';
import 'domain/entities/non_params.dart';
// import 'domain/repositories/movie_repository.dart';

Future<void> main() async {
  unawaited(getIt.init());
  // ApiClient apiClient = ApiClient(Client());
  // MovieRemoteDataSource dataSource = MovieRemoteDataSourceImpl(apiClient);
  // MovieRepository movieRepository = MovieRepositoryImp(dataSource);
  // movieRepository.getPlayingNow();
  // movieRepository.getTrending();
  // dataSource.getTrending();
  // dataSource.getComingSoon();
  // dataSource.getPlayingNow();
  // GetTrending getTrending = GetTrending(movieRepository);
  GetTrending getTrending = getIt.getItInstance<GetTrending>();
  final Either<AppError, List<MovieEntity>?>? eitherResponse =
      await getTrending(NoParams());
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

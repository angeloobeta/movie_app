import 'package:http/http.dart';
import 'package:movie_app/data/data_sources/movie_remote_data_source.dart';

void main() {
  Client apiClient = Client();
  MovieRemoteDataSource dataSource = MovieRemoteDataSourceImpl(apiClient);
  dataSource.getTrending();
  // runApp(MaterialApp(
  //   home: HomeScreen(),
  // ));
  print("Whatever you want to do is okay");
}

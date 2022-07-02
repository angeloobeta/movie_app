// import 'dart:convert';
//
// import 'package:http/http.dart';
// import 'package:movie_app/data/models/movie_model.dart';
// import 'package:movie_app/data/models/movie_result_model.dart';
//
// import 'data/core/api_constants.dart';
//
// abstract class MovieRemoteData {
//   Future<List<MovieModel>> theTrending();
//   Future<List<MovieModel>?> thePopular();
// }
//
// class MovieRemoteDataImpl extends MovieRemoteData {
//   final Client _client;
//   MovieRemoteDataImpl(this._client);
//
//   @override
//   Future<List<MovieModel>> theTrending() async {
//     final response = await _client.get(
//         Uri.parse(
//             '${Api_constant.BASE_URL}trending/movie/day?api_key=${Api_constant.API_KEY}'),
//         headers: {'Content-Type': 'application/json'});
//     if (response.statusCode == 200) {
//       final responseBody = json.decode(response.body);
//       final movies = MovieResultModel.fromJson(responseBody).movies;
//       print(movies);
//       return movies!;
//     }else{
//       throw Exception(response.reasonPhrase);
//     }
//   }
//
//   @override
//   Future<List<MovieModel>?> thePopular() async {
// final response = await _client.get(Uri.parse(
//     '${Api_constant.BASE_URL}trending/movie/day?api_key=${Api_constant.API_KEY}'),
//     headers: {'Content-Type': 'application/json'}
// );
//
// if(response.statusCode == 200){
//   final responseBody = json.decode(response.body);
//   final movies =  MovieResultModel.fromJson(responseBody).movies;
//   print(movies);
//   return movies;
// }else{
//   throw Exception(response.reasonPhrase);
// }
//
//   }
//
// }

// print("What were you saying again to me")

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:moviecarousel/models/NowShowing.dart';
import 'package:moviecarousel/models/TopRated.dart';
import 'package:moviecarousel/models/server_error.dart';

class MovieService{
  MovieService({
    http.Client? httpClient,
    this.baseUrl = 'https://api.themoviedb.org/3/movie/',
  }) : _httpClient = httpClient ?? http.Client();

  final String baseUrl;
  final Client _httpClient;

  Uri getUrl({
    required String url,
    Map<String, String>? extraParameters,
  }) {
    final queryParameters = <String, String>{
      'api_key': '5354e044b3a567d2a03788cae3f254c6' //should be placed in the Environment file during the production
    };
    if (extraParameters != null) {
      queryParameters.addAll(extraParameters);
    }

    return Uri.parse('$baseUrl/$url').replace(
      queryParameters: queryParameters,
    );
  }

  Future<NowShowing> getNowPlayingMovies() async {
    final response = await _httpClient.get(
      getUrl(url: 'now_playing'),
    );
    if (response.statusCode == 200) {
      if (response.body.isNotEmpty) {
        return NowShowing.fromJson(
          json.decode(response.body),
        );
      } else {
        throw ErrorZeroResponse();
      }
    } else {
      throw ErrorGettingMovies('Error getting now showing movies');
    }
  }

  Future<TopRated> getTopRatedMovies() async {
    final response = await _httpClient.get(
      getUrl(url: 'now_playing'),
    );
    if (response.statusCode == 200) {
      if (response.body.isNotEmpty) {
        return TopRated.fromJson(
          json.decode(response.body),
        );
      } else {
        throw ErrorZeroResponse();
      }
    } else {
      throw ErrorGettingMovies('Error getting top rated movies');
    }
  }
}
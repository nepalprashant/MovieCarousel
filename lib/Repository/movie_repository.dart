import 'package:moviecarousel/models/NowShowing.dart';
import 'package:moviecarousel/models/TopRated.dart';
import 'package:moviecarousel/Services/movie_service.dart';

class MovieRepository {
  const MovieRepository({
    required this.service,
  });
  final MovieService service;

  Future<NowShowing> getNowPlayingMovies() async => service.getNowPlayingMovies();

  Future<Future<TopRated>> getTopRatedMovies() async => service.getTopRatedMovies();
}

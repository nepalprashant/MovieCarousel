import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviecarousel/Bloc/top_rated_bloc/top_rated_event.dart';
import 'package:moviecarousel/Bloc/top_rated_bloc/top_rated_state.dart';
import 'package:moviecarousel/Repository/movie_repository.dart';

class TopRatedBloc extends Bloc<TopRatedEvent, TopRatedState> {
  final MovieRepository movieRepository;

  TopRatedBloc(this.movieRepository) : super(TopRatedLoadingState()) {
    on<TopRatedLoadEvent>((event, emit) async {
      emit(TopRatedLoadingState());

      try {
        final topRatedMovies = await movieRepository.getTopRatedMovies();
        // emit(TopRatedLoadedState(topRatedMovies));
      } catch (e) {
        emit(TopRatedErrorState(e.toString()));
      }
    });
  }
}

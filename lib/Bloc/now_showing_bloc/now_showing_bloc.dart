import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviecarousel/Bloc/now_showing_bloc/now_showing_event.dart';
import 'package:moviecarousel/Bloc/now_showing_bloc/now_showing_state.dart';
import 'package:moviecarousel/Repository/movie_repository.dart';

class NowShowingBloc extends Bloc<NowShowingEvent, NowShowingState> {
  final MovieRepository movieRepository;

  NowShowingBloc(this.movieRepository) : super(NowShowingLoadingState()) {
    on<NowShowingLoadEvent>((event, emit) async {
      emit(NowShowingLoadingState());
      
      try {
        final nowShowingMovies = await movieRepository.getNowPlayingMovies();
        emit(NowShowingLoadedState(nowShowingMovies));
      } catch (e) {
        emit(NowShowingErrorState(e.toString()));
      }
    });
  }
}

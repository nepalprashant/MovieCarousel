import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:moviecarousel/models/NowShowing.dart';

@immutable
abstract class NowShowingState extends Equatable {}

class NowShowingLoadingState extends NowShowingState {
  @override
  List<Object?> get props => [];
}

//loaded state
class NowShowingLoadedState extends NowShowingState {
  NowShowingLoadedState(this.nowShowingMovies);
  final NowShowing nowShowingMovies;

  @override
  List<Object?> get props => [nowShowingMovies];
}

//error state
class NowShowingErrorState extends NowShowingState {
  NowShowingErrorState(this.error);
  final String error;

  @override
  List<Object?> get props => [error];
}

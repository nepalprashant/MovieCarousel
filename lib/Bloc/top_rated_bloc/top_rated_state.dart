import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:moviecarousel/models/TopRated.dart';

@immutable
abstract class TopRatedState extends Equatable {}

class TopRatedLoadingState extends TopRatedState {
  @override
  List<Object?> get props => [];
}

//loaded state
class TopRatedLoadedState extends TopRatedState {
  TopRatedLoadedState(this.topRatedMovies);
  final TopRated topRatedMovies;

  @override
  List<Object?> get props => [topRatedMovies];
}

//error state
class TopRatedErrorState extends TopRatedState {
  TopRatedErrorState(this.error);
  final String error;

  @override
  List<Object?> get props => [error];
}

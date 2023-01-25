import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class TopRatedEvent extends Equatable{
  const TopRatedEvent();
}

class TopRatedLoadEvent extends TopRatedEvent{
  @override 
  List<Object> get props => [];
}
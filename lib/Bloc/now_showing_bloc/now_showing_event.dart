import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class NowShowingEvent extends Equatable{
  const NowShowingEvent();
}

class NowShowingLoadEvent extends NowShowingEvent{
  @override 
  List<Object> get props => [];
}
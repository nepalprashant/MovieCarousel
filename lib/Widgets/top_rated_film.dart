import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviecarousel/Bloc/top_rated_bloc/top_rated_bloc.dart';
import 'package:moviecarousel/Bloc/top_rated_bloc/top_rated_state.dart';

class AnimatedFilmSlide extends StatelessWidget {
  const AnimatedFilmSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopRatedBloc, TopRatedState>(builder: (context, state) {
      return CarouselSlider(
        options: CarouselOptions(
          height: 150.0,
          viewportFraction: 0.37,
          enableInfiniteScroll: false,
        ),
        items: [1, 2, 3, 4, 5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  color: const Color(0XFF444c6b),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: (state is TopRatedLoadedState)
                    ? const CircularProgressIndicator()
                    : (state is TopRatedLoadedState)
                        ? Text(
                            'Slide $i',
                            style: const TextStyle(
                                fontSize: 16.0, color: Colors.white),
                          )
                        : const CircularProgressIndicator(),
              );
            },
          );
        }).toList(),
      );
    });
  }
}

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviecarousel/Bloc/now_showing_bloc/now_showing_bloc.dart';
import 'package:moviecarousel/Bloc/now_showing_bloc/now_showing_state.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class NowShowingCarousel extends StatelessWidget {
  const NowShowingCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<NowShowingBloc, NowShowingState>(builder: (context, state) {
          return CarouselSlider(
            options: CarouselOptions(
              height: 300.0,
              viewportFraction: 0.6,
              enableInfiniteScroll: false,
              enlargeCenterPage: true,
              disableCenter: true,
            ),
            items: [1, 2, 3].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 1.0),
                    decoration: BoxDecoration(
                      color: const Color(0XFF444c6b),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: (state is NowShowingLoadingState)
                        ? const CircularProgressIndicator()
                        : (state is NowShowingLoadedState)
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
        }),
        const SizedBox(height: 15.0),
        AnimatedSmoothIndicator(
          activeIndex: 0,
          count: 3,
          effect: const ExpandingDotsEffect(
            activeDotColor: Color(0XFF4ccdeb),
            dotColor: Color(0XFF1b486f),
          ),
        )
      ],
    );
  }
}

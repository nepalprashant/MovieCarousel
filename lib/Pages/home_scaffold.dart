import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviecarousel/Bloc/now_showing_bloc/now_showing_bloc.dart';
import 'package:moviecarousel/Bloc/now_showing_bloc/now_showing_event.dart';
import 'package:moviecarousel/Bloc/top_rated_bloc/top_rated_bloc.dart';
import 'package:moviecarousel/Bloc/top_rated_bloc/top_rated_event.dart';
import 'package:moviecarousel/Repository/movie_repository.dart';
import 'package:moviecarousel/Pages/main_page.dart';
import 'package:moviecarousel/Services/movie_service.dart';
import 'package:moviecarousel/Widgets/navigation_bar.dart';

class HomeScaffold extends StatelessWidget {
  const HomeScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RepositoryProvider(
        create: (context) => MovieRepository(service: MovieService()),
        child: MultiBlocProvider(
          providers: [
            BlocProvider<NowShowingBloc>(
              create: (context) => NowShowingBloc(
                RepositoryProvider.of<MovieRepository>(context),
              )..add(
                  (NowShowingLoadEvent()),
                ),
            ),
            BlocProvider<TopRatedBloc>(
              create: (context) => TopRatedBloc(
                RepositoryProvider.of<MovieRepository>(context),
              )..add(
                  (TopRatedLoadEvent()),
                ),
            ),
          ],
          child: const MainPage(),
        ),
      ),
      bottomNavigationBar: const HomeNavigationBar(),
    );
  }
}

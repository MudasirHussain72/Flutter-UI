import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_booking_app/bloc/popular_movies_bloc/popular_movies_bloc.dart';
import 'package:movie_booking_app/data/response/response.dart';
import 'package:movie_booking_app/main.dart';
import 'package:movie_booking_app/views/home/widgets/all_movies.dart';
import 'package:movie_booking_app/views/home/widgets/app_header.dart';
import 'package:movie_booking_app/views/home/widgets/app_navigation.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late PopularMoviesBloc moviesBloc;
  late Size size;
  double top = -300;
  double left = -300;

  @override
  void initState() {
    super.initState();

    moviesBloc = PopularMoviesBloc(moviesApiRepository: getIt());

    moviesBloc.add(PopularMoviesFetch());

    WidgetsBinding.instance.addPostFrameCallback((_) {
      size = MediaQuery.of(context).size;
      const movieCount = 20;
      moviesBloc.add(UpdateMovieLayout(size, movieCount));
    });
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: GestureDetector(
        onPanUpdate: (details) {
          setState(() {
            top = (top + (details.delta.dy * 1.5))
                .clamp(moviesBloc.state.maxTop, 0.0);
            left = (left + (details.delta.dx * 1.5))
                .clamp(moviesBloc.state.maxLeft, 0.0);
          });
        },
        child: Container(
          width: size.width,
          height: size.height,
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: Stack(
            children: [
              BlocProvider(
                create: (_) => moviesBloc..add(PopularMoviesFetch()),
                child: BlocBuilder<PopularMoviesBloc, PopularMoviesStates>(
                  buildWhen: (previous, current) =>
                      previous.mostPopularTvShowsList !=
                      current.mostPopularTvShowsList,
                  builder: (BuildContext context, state) {
                    switch (state.mostPopularTvShowsList.status) {
                      case Status.loading:
                        return AnimatedPositioned(
                          duration: const Duration(milliseconds: 700),
                          curve: Curves.easeOut,
                          top: top,
                          left: left,
                          child: const AllMovies(isLoading: true),
                        );
                      case Status.error:
                        return Center(
                            child: Text(
                          'Error\n${state.mostPopularTvShowsList.message}',
                          textAlign: TextAlign.center,
                        ));
                      case Status.completed:
                        if (state.mostPopularTvShowsList.data == null) {
                          return const Center(child: Text('noDataFound'));
                        }
                        final movieList =
                            state.mostPopularTvShowsList.data!.tvShows;
                        return AnimatedPositioned(
                          duration: const Duration(milliseconds: 700),
                          curve: Curves.easeOut,
                          top: top,
                          left: left,
                          child: AllMovies(movies: movieList),
                        );
                      default:
                        return const Center(child: Text('default'));
                    }
                  },
                ),
              ),
              const AppHeader(),
              const AppNavigation()
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    moviesBloc.close();
    super.dispose();
  }
}

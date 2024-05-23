import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_booking_app/bloc/popular_movies_bloc/popular_movies_bloc.dart';
import 'package:movie_booking_app/data/response/response.dart';
import 'package:movie_booking_app/views/activities/activities_view.dart';
import 'package:movie_booking_app/views/all_movies/all_movies_view.dart';
import 'package:movie_booking_app/views/home/widgets/all_movies.dart';
import 'package:movie_booking_app/views/home/widgets/app_header.dart';
import 'package:movie_booking_app/views/home/widgets/app_navigation.dart';
import 'package:movie_booking_app/views/profile/profile_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late Size size;
  double top = -300;
  double left = -300;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    context.read<PopularMoviesBloc>().add(PopularMoviesFetch());
    WidgetsBinding.instance.addPostFrameCallback((_) {
      size = MediaQuery.of(context).size;
      const movieCount = 20;
      context
          .read<PopularMoviesBloc>()
          .add(UpdateMovieLayout(size, movieCount));
    });
  }

  Widget _getSelectedScreen() {
    switch (selectedIndex) {
      case 0:
        return BlocBuilder<PopularMoviesBloc, PopularMoviesStates>(
          buildWhen: (previous, current) =>
              previous.mostPopularTvShowsList != current.mostPopularTvShowsList,
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
                final movieList = state.mostPopularTvShowsList.data!.tvShows;
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
        );
      case 1:
        return const AllMoviesView();
      case 2:
        return const ActivitiesScreen();
      case 3:
        return const ProfileScreen();
      default:
        return const Center(child: Text('default'));
    }
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: GestureDetector(
        onPanUpdate: (details) {
          setState(() {
            top = (top + (details.delta.dy * 1.5))
                .clamp(context.read<PopularMoviesBloc>().state.maxTop, 0.0);
            left = (left + (details.delta.dx * 1.5))
                .clamp(context.read<PopularMoviesBloc>().state.maxLeft, 0.0);
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
              _getSelectedScreen(),
              selectedIndex == 0 ? const AppHeader() : const SizedBox.shrink(),
              AppNavigation(
                currentIndex: selectedIndex,
                onTabSelected: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

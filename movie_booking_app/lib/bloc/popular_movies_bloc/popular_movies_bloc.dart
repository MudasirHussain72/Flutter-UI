import 'dart:math';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_booking_app/data/response/response.dart';
import 'package:movie_booking_app/models/most_popular_tv_shows_model/most_popular_tv_shows_model.dart';
import 'package:movie_booking_app/repository/most_popular_movies_api/most_popular_movies_repository.dart';
import 'package:flutter/material.dart';
part 'popular_movies_events.dart';
part 'popular_movies_states.dart';

class PopularMoviesBloc extends Bloc<PopularMoviesEvents, PopularMoviesStates> {
  MoviesApiRepository moviesApiRepository;
  late Size size;
  double top = -300;
  double left = -300;
  late double maxTop;
  late double maxLeft;

  PopularMoviesBloc({required this.moviesApiRepository})
      : super(PopularMoviesStates(
            mostPopularTvShowsList: ApiResponse.loading(),
            maxTop: 0.0,
            maxLeft: 0.0)) {
    on<PopularMoviesFetch>(_popularMoviesFetch);
    on<UpdateMovieLayout>(_updateMovieLayout);
  }

  void _popularMoviesFetch(
      PopularMoviesFetch event, Emitter<PopularMoviesStates> emit) async {
    await moviesApiRepository.fetchMoviesList().then((response) {
      emit(state.copyWith(
        mostPopularTvShowsList: ApiResponse.completed(response),
      ));
    }).onError((error, stackTrace) {
      emit(state.copyWith(
        mostPopularTvShowsList: ApiResponse.error(error.toString()),
      ));
    });
  }

  void _updateMovieLayout(UpdateMovieLayout event, Emitter<PopularMoviesStates> emit) {
    size = event.size;
    final moviesSize = _calculateMoviesSize(event.movieCount);
    maxTop = (size.height - moviesSize.height).clamp(double.negativeInfinity, 0.0);
    maxLeft = (size.width - moviesSize.width).clamp(double.negativeInfinity, 0.0);

    emit(state.copyWith(maxTop: maxTop, maxLeft: maxLeft));
  }

  Size _calculateMoviesSize(int movieCount) {
    final columns = (sqrt(movieCount)).toInt();
    final width = columns * 320;
    final rows = (movieCount / columns).ceil();
    final height = rows * 480;
    return Size(width.toDouble(), height.toDouble());
  }
}

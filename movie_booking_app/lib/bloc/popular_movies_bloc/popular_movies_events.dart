part of 'popular_movies_bloc.dart';

abstract class PopularMoviesEvents extends Equatable {
  @override
  List<Object?> get props => [];
}

class PopularMoviesFetch extends PopularMoviesEvents {}

class UpdateMovieLayout extends PopularMoviesEvents {
  final Size size;
  final int movieCount;

  UpdateMovieLayout(this.size, this.movieCount);

  @override
  List<Object> get props => [size, movieCount];
}

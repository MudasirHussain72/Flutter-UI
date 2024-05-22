part of 'popular_movies_bloc.dart';

class PopularMoviesStates extends Equatable {
  final ApiResponse<MostPopularTvShowsModel> mostPopularTvShowsList;
  final double maxTop;
  final double maxLeft;

  const PopularMoviesStates({
    required this.mostPopularTvShowsList,
    required this.maxTop,
    required this.maxLeft,
  });

  PopularMoviesStates copyWith({
    ApiResponse<MostPopularTvShowsModel>? mostPopularTvShowsList,
    double? maxTop,
    double? maxLeft,
  }) {
    return PopularMoviesStates(
      mostPopularTvShowsList:
          mostPopularTvShowsList ?? this.mostPopularTvShowsList,
      maxTop: maxTop ?? this.maxTop,
      maxLeft: maxLeft ?? this.maxLeft,
    );
  }

  @override
  List<Object> get props => [mostPopularTvShowsList, maxTop, maxLeft];
}

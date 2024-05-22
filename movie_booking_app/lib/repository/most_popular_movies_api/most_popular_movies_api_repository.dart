import 'package:movie_booking_app/models/most_popular_tv_shows_model/most_popular_tv_shows_model.dart';

/// Abstract class defining methods for movies API repositories.
abstract class MoviesApiRepository {
  /// Fetches the list of movies from the API.
  ///
  /// Returns a [MostPopularTvShowsModel] representing the list of movies.
  Future<MostPopularTvShowsModel> fetchMoviesList();
}

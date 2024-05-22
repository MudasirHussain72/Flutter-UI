import 'package:movie_booking_app/configs/app_url.dart';
import 'package:movie_booking_app/data/network/network_api_services.dart';
import 'package:movie_booking_app/models/most_popular_tv_shows_model/most_popular_tv_shows_model.dart';
import 'most_popular_movies_api_repository.dart';

/// Implementation of [MoviesApiRepository] for making HTTP requests to fetch movies list.
class MoviesHttpApiRepository implements MoviesApiRepository {
  final _apiServices = NetworkApiService();

  /// Fetches the list of movies from the API.
  ///
  /// Returns a [MostPopularTvShowsModel] representing the list of movies.
  @override
  Future<MostPopularTvShowsModel> fetchMoviesList() async {
    final response = await _apiServices.getApi('${AppUrl.mostPopularTVShows}2');
    return MostPopularTvShowsModel.fromJson(response);
  }
}

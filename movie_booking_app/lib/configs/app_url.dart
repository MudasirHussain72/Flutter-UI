class AppUrl {
  static var authBaseUrl = 'https://reqres.in'; //base url for auth
  static var movieBaseUrl = 'https://www.episodate.com'; //base url for auth
  static var loginEndPint = '$authBaseUrl/api/login'; // endpoint for login
  static var mostPopularTVShows =
      '$movieBaseUrl/api/most-popular?page='; // pass page id 1,2,3 n to get list of movies per page or per get
  static var searchMovie =
      '$movieBaseUrl/api/search?q='; //movie name it will return list of metching movies
  static var movieDetail =
      '$movieBaseUrl/api/show-details?q='; //29560 pass movie if to get the details
}

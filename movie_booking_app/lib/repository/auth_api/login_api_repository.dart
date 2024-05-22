import 'package:movie_booking_app/models/user/user.dart';

/// Abstract class defining methods for authentication API repositories.
abstract class LoginApiRepository {
  /// Sends a login request to the authentication API with the provided [data].
  ///
  /// Returns a [User] representing the user data if the login is successful.
  Future<User> loginApi(dynamic data);
}

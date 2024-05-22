import 'package:movie_booking_app/models/user/user.dart';
import 'package:movie_booking_app/repository/auth_api/login_repository.dart';

/// Mock implementation of [LoginApiRepository] for simulating login requests.
class LoginMockApiRepository implements LoginApiRepository {
  @override
  Future<User> loginApi(dynamic data) async {
    // Simulate a delay to mimic network latency
    await Future.delayed(const Duration(seconds: 2));
    // Mock response data
    var responseData = {'token': 'a23z345xert'};
    return User.fromJson(responseData);
  }
}

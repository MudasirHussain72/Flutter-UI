import 'package:movie_booking_app/configs/app_url.dart';
import 'package:movie_booking_app/data/network/network_api_services.dart';
import 'package:movie_booking_app/models/user/user.dart';
import 'package:movie_booking_app/repository/auth_api/login_repository.dart';

class LoginRepository implements LoginApiRepository {
  final api = NetworkApiService();
  @override
  Future<User> loginApi(dynamic data) async {
    final response = await api.postApi(AppUrl.loginEndPint, data);
    return User.fromJson(response);
  }
}

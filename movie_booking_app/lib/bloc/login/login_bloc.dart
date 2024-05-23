import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_booking_app/data/response/response.dart';
import 'package:movie_booking_app/models/user/user.dart';
import 'package:movie_booking_app/repository/auth_api/login_repository.dart';
import 'package:movie_booking_app/services/session_manager/session_controller.dart';
part 'login_events.dart';
part 'login_states.dart';

class LoginBloc extends Bloc<LoginEvents, LoginStates> {
  final LoginApiRepository loginRepository;
  LoginBloc({required this.loginRepository}) : super(const LoginStates()) {
    on<EmailChange>(_onEmailChange);
    on<PasswordChange>(_onPasswordChange);
    on<LoginButton>(_onLoginButton);
  }
  void _onEmailChange(EmailChange event, Emitter<LoginStates> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _onPasswordChange(PasswordChange event, Emitter<LoginStates> emit) {
    emit(state.copyWith(password: event.password));
  }

  void _onLoginButton(LoginButton event, Emitter<LoginStates> emit) async {
    emit(state.copyWith(postApiStatus: PostApiStatus.initial));
    Map data = {"email": state.email, "password": state.password};
    emit(state.copyWith(postApiStatus: PostApiStatus.loading));
    await loginRepository.loginApi(data).then(
      (value) async {
        if (value.error.isNotEmpty) {
          emit(state.copyWith(
              message: value.error, postApiStatus: PostApiStatus.error));
        } else {
          var valueEdited = User(
            email: state.email.toString(),
            token: value.token,
          );
          await SessionController().saveUserInPreference(valueEdited);
          await SessionController().getUserFromPreference();
          emit(state.copyWith(
              message: 'Login Successfull: ${value.token}',
              postApiStatus: PostApiStatus.success));
        }
      },
    ).onError(
      (error, stackTrace) {
        emit(state.copyWith(
            message: error.toString(), postApiStatus: PostApiStatus.error));
      },
    );
  }
}

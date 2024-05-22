part of 'login_bloc.dart';
abstract class LoginEvents extends Equatable {
  const LoginEvents();

  @override
  List<Object?> get props => [];
}

class EmailChange extends LoginEvents {
  final String? email;
  const EmailChange({required this.email});
  @override
  List<Object?> get props => [email];
}

class EmailUnFocus extends LoginEvents {}

class PasswordChange extends LoginEvents {
  final String? password;
  const PasswordChange({required this.password});
  @override
  List<Object?> get props => [password];
}

class PasswordUnFocus extends LoginEvents {}

class LoginButton extends LoginEvents {}

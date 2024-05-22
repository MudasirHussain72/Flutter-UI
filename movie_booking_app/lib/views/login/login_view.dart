import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_booking_app/bloc/login/login_bloc.dart';
import 'package:movie_booking_app/configs/components/round_button.dart';
import 'package:movie_booking_app/configs/routes%20/routes_name.dart';
import 'package:movie_booking_app/data/response/response.dart';
import 'package:movie_booking_app/main.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  late LoginBloc _loginBloc;
  @override
  void initState() {
    _loginBloc = LoginBloc(loginRepository: getIt());
    super.initState();
  }

  @override
  void dispose() {
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    _loginBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
            create: (context) => _loginBloc,
            child: Form(
              key: _formKey,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "CINEMAX",
                      textAlign: TextAlign.center,
                      style: textTheme.displaySmall!
                          .copyWith(color: Colors.red, fontSize: 28),
                    ),
                    SizedBox(height: height * 0.03),
                    Text(
                      "Best option to book a movie ticket",
                      textAlign: TextAlign.center,
                      style: textTheme.bodyMedium!.copyWith(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: height * 0.15),
                    BlocBuilder<LoginBloc, LoginStates>(
                      buildWhen: (previous, current) =>
                          current.email != previous.email,
                      builder: (context, state) {
                        print('email rebuild');
                        return TextFormField(
                          decoration: const InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white),
                            ),
                          ),
                          focusNode: emailFocusNode,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter email';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            context
                                .read<LoginBloc>()
                                .add(EmailChange(email: value));
                          },
                        );
                      },
                    ),
                    SizedBox(height: height * 0.01),
                    BlocBuilder<LoginBloc, LoginStates>(
                      buildWhen: (previous, current) =>
                          current.password != previous.password,
                      builder: (context, state) {
                        print('password rebuild');
                        return TextFormField(
                          focusNode: passwordFocusNode,
                          decoration: const InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter password';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            context
                                .read<LoginBloc>()
                                .add(PasswordChange(password: value));
                          },
                        );
                      },
                    ),
                    SizedBox(height: height * 0.03),
                    BlocListener<LoginBloc, LoginStates>(
                      listenWhen: (previous, current) =>
                          previous.postApiStatus != current.postApiStatus,
                      listener: (context, state) {
                        if (state.postApiStatus == PostApiStatus.error) {
                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(SnackBar(
                                content: Text(state.message.toString())));
                        }
                        if (state.postApiStatus == PostApiStatus.success) {
                          Navigator.pushNamedAndRemoveUntil(
                              context, RoutesName.home, (route) => false);
                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(SnackBar(
                                content: Text(state.message.toString())));
                        }
                      },
                      child: BlocBuilder<LoginBloc, LoginStates>(
                        builder: (context, state) {
                          return RoundButton(
                            loading:
                                state.postApiStatus == PostApiStatus.loading,
                            title: 'Continue',
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                if (state.password!.length < 6) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content: Text(
                                        'Password cannot be less then 6 characters!'),
                                  ));
                                } else {
                                  print('I\'m here');
                                  context.read<LoginBloc>().add(LoginButton());
                                }
                              }
                            },
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}

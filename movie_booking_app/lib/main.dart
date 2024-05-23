import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_booking_app/bloc/popular_movies_bloc/popular_movies_bloc.dart';
import 'package:movie_booking_app/configs/routes%20/routes.dart';
import 'package:movie_booking_app/configs/routes%20/routes_name.dart';
import 'package:movie_booking_app/configs/themes/themes.dart';
import 'package:movie_booking_app/repository/auth_api/login_repository.dart';
import 'package:movie_booking_app/repository/most_popular_movies_api/most_popular_movies_repository.dart';

// GetIt is a package used for service locator or to manage dependency injection
GetIt getIt = GetIt.instance;
void main() {
  WidgetsFlutterBinding
      .ensureInitialized(); // Ensuring that Flutter bindings are initialized
  servicesLocator(); // Initializing service locator for dependency injection
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PopularMoviesBloc>(
          create: (BuildContext context) =>
              PopularMoviesBloc(moviesApiRepository: getIt()),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        themeMode: ThemeMode.dark, // Setting theme mode to dark
        theme: lightTheme, // Setting light theme
        darkTheme: darkTheme, // Setting dark theme
        initialRoute: RoutesName.splash, // Initial route
        onGenerateRoute: Routes.generateRoute, // Generating routes
      ),
    );
  }
}

// Function for initializing service locator
void servicesLocator() {
  getIt.registerLazySingleton<LoginApiRepository>(() =>
      LoginRepository()); // Registering AuthHttpApiRepository as a lazy singleton for AuthApiRepository
  getIt.registerLazySingleton<MoviesApiRepository>(() =>
      MoviesHttpApiRepository()); // Registering MoviesHttpApiRepository as a lazy si
}
